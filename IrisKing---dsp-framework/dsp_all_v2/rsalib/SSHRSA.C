/*
 * RSA implementation for PuTTY.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include "ssh.h"


int rsaencrypt(unsigned char *data, int length, struct RSAKey *key)
{
    Bignum b1, b2;
    int i;
    unsigned char *p;


    if (key->bytes < length + 4)
	return 0;		       /* RSA key too short! */

    memmove(data + key->bytes - length, data, length);
    data[0] = 0;
    data[1] = 2;
    for (i = 2; i < key->bytes - length - 1; i++) {
		do {
			data[i] = random_byte();
		} while (data[i] == 0);
    }
    data[key->bytes - length - 1] = 0;

    b1 = bignum_from_bytes(data, key->bytes);

    b2 = modpow(b1, key->exponent, key->modulus);

    p = data;
    for (i = key->bytes; i--;) {
		*p++ = bignum_byte(b2, i);
    }

    freebn(b1);
    freebn(b2);

    return 1;
}

static void sha512_mpint(SHA512_State * s, Bignum b)
{
    unsigned char lenbuf[4];
    int len;
    len = (bignum_bitcount(b) + 8) / 8;
    PUT_32BIT(lenbuf, len);
    SHA512_Bytes(s, lenbuf, 4);
    while (len-- > 0) {
	lenbuf[0] = bignum_byte(b, len);
	SHA512_Bytes(s, lenbuf, 1);
    }
    memset(lenbuf, 0, sizeof(lenbuf));
}

/*
 * This function is a wrapper on modpow(). It has the same effect
 * as modpow(), but employs RSA blinding to protect against timing
 * attacks.
 */
static Bignum rsa_privkey_op(Bignum input, struct RSAKey *key)
{
    Bignum random, random_encrypted, random_inverse;
    Bignum input_blinded, ret_blinded;
    Bignum ret;

    SHA512_State ss;
    unsigned char digest512[64];
    int digestused = lenof(digest512);
    int hashseq = 0;

    /*
     * Start by inventing a random number chosen uniformly from the
     * range 2..modulus-1. (We do this by preparing a random number
     * of the right length and retrying if it's greater than the
     * modulus, to prevent any potential Bleichenbacher-like
     * attacks making use of the uneven distribution within the
     * range that would arise from just reducing our number mod n.
     * There are timing implications to the potential retries, of
     * course, but all they tell you is the modulus, which you
     * already knew.)
     * 
     * To preserve determinism and avoid Pageant needing to share
     * the random number pool, we actually generate this `random'
     * number by hashing stuff with the private key.
     */
    while (1) {
	int bits, byte, bitsleft, v;
	random = copybn(key->modulus);
	/*
	 * Find the topmost set bit. (This function will return its
	 * index plus one.) Then we'll set all bits from that one
	 * downwards randomly.
	 */
	bits = bignum_bitcount(random);
	byte = 0;
	bitsleft = 0;
	while (bits--) {
	    if (bitsleft <= 0) {
		bitsleft = 8;
		/*
		 * Conceptually the following few lines are equivalent to
		 *    byte = random_byte();
		 */
		if (digestused >= lenof(digest512)) {
		    unsigned char seqbuf[4];
		    PUT_32BIT(seqbuf, hashseq);
		    SHA512_Init(&ss);
		    SHA512_Bytes(&ss, "RSA deterministic blinding", 26);
		    SHA512_Bytes(&ss, seqbuf, sizeof(seqbuf));
		    sha512_mpint(&ss, key->private_exponent);
		    SHA512_Final(&ss, digest512);
		    hashseq++;

		    /*
		     * Now hash that digest plus the signature
		     * input.
		     */
		    SHA512_Init(&ss);
		    SHA512_Bytes(&ss, digest512, sizeof(digest512));
		    sha512_mpint(&ss, input);
		    SHA512_Final(&ss, digest512);

		    digestused = 0;
		}
		byte = digest512[digestused++];
	    }
	    v = byte & 1;
	    byte >>= 1;
	    bitsleft--;
	    bignum_set_bit(random, bits, v);
	}

	/*
	 * Now check that this number is strictly greater than
	 * zero, and strictly less than modulus.
	 */
	if (bignum_cmp(random, Zero) <= 0 ||
	    bignum_cmp(random, key->modulus) >= 0) {
	    freebn(random);
	    continue;
	} else {
	    break;
	}
    }

    /*
     * RSA blinding relies on the fact that (xy)^d mod n is equal
     * to (x^d mod n) * (y^d mod n) mod n. We invent a random pair
     * y and y^d; then we multiply x by y, raise to the power d mod
     * n as usual, and divide by y^d to recover x^d. Thus an
     * attacker can't correlate the timing of the modpow with the
     * input, because they don't know anything about the number
     * that was input to the actual modpow.
     * 
     * The clever bit is that we don't have to do a huge modpow to
     * get y and y^d; we will use the number we just invented as
     * _y^d_, and use the _public_ exponent to compute (y^d)^e = y
     * from it, which is much faster to do.
     */
    random_encrypted = modpow(random, key->exponent, key->modulus);
    random_inverse = modinv(random, key->modulus);
    input_blinded = modmul(input, random_encrypted, key->modulus);
    ret_blinded = modpow(input_blinded, key->private_exponent, key->modulus);
    ret = modmul(ret_blinded, random_inverse, key->modulus);

    freebn(ret_blinded);
    freebn(input_blinded);
    freebn(random_inverse);
    freebn(random_encrypted);
    freebn(random);

    return ret;
}


Bignum rsadecrypt(Bignum input, struct RSAKey *key)
{
    return rsa_privkey_op(input, key);
}


static Bignum rsa_decrypt_blind(Bignum input, Bignum modulus, Bignum exp)
{
    Bignum random, random_encrypted, random_inverse;
    Bignum input_blinded, ret_blinded;
    Bignum ret;

    SHA512_State ss;
    unsigned char digest512[64];
    int digestused = lenof(digest512);
    int hashseq = 0;

    return modpow(input, exp, modulus);
    /*
     * Start by inventing a random number chosen uniformly from the
     * range 2..modulus-1. (We do this by preparing a random number
     * of the right length and retrying if it's greater than the
     * modulus, to prevent any potential Bleichenbacher-like
     * attacks making use of the uneven distribution within the
     * range that would arise from just reducing our number mod n.
     * There are timing implications to the potential retries, of
     * course, but all they tell you is the modulus, which you
     * already knew.)
     * 
     * To preserve determinism and avoid Pageant needing to share
     * the random number pool, we actually generate this `random'
     * number by hashing stuff with the private key.
     */
    while (1) {
		int bits, byte, bitsleft, v;
		random = copybn(modulus);
		/*
		* Find the topmost set bit. (This function will return its
		* index plus one.) Then we'll set all bits from that one
		* downwards randomly.
		*/
		bits = bignum_bitcount(random);
		byte = 0;
		bitsleft = 0;
		while (bits--) {
			if (bitsleft <= 0) {
				bitsleft = 8;
				/*
				* Conceptually the following few lines are equivalent to
				*    byte = random_byte();
				*/
				if (digestused >= lenof(digest512)) {
					unsigned char seqbuf[4];
					PUT_32BIT(seqbuf, hashseq);
					SHA512_Init(&ss);
					SHA512_Bytes(&ss, "RSA deterministic blinding", 26);
					SHA512_Bytes(&ss, seqbuf, sizeof(seqbuf));
					sha512_mpint(&ss, exp);
					SHA512_Final(&ss, digest512);
					hashseq++;
					
					/*
					* Now hash that digest plus the signature
					* input.
					*/
					SHA512_Init(&ss);
					SHA512_Bytes(&ss, digest512, sizeof(digest512));
					sha512_mpint(&ss, input);
					SHA512_Final(&ss, digest512);
					
					digestused = 0;
				}
				byte = digest512[digestused++];
			}
			v = byte & 1;
			byte >>= 1;
			bitsleft--;
			bignum_set_bit(random, bits, v);
		}
		
		/*
		* Now check that this number is strictly greater than
		* zero, and strictly less than modulus.
		*/
		if (bignum_cmp(random, Zero) <= 0 ||
			bignum_cmp(random, modulus) >= 0) {
			freebn(random);
			continue;
		} else {
			break;
		}
    }

    /*
     * RSA blinding relies on the fact that (xy)^d mod n is equal
     * to (x^d mod n) * (y^d mod n) mod n. We invent a random pair
     * y and y^d; then we multiply x by y, raise to the power d mod
     * n as usual, and divide by y^d to recover x^d. Thus an
     * attacker can't correlate the timing of the modpow with the
     * input, because they don't know anything about the number
     * that was input to the actual modpow.
     * 
     * The clever bit is that we don't have to do a huge modpow to
     * get y and y^d; we will use the number we just invented as
     * _y^d_, and use the _public_ exponent to compute (y^d)^e = y
     * from it, which is much faster to do.
     */
    random_encrypted = modpow(random, exp, modulus);
    random_inverse = modinv(random, modulus);
    input_blinded = modmul(input, random_encrypted, modulus);
    ret_blinded = modpow(input_blinded, exp, modulus);
    ret = modmul(ret_blinded, random_inverse, modulus);

    freebn(ret_blinded);
    freebn(input_blinded);
    freebn(random_inverse);
    freebn(random_encrypted);
    freebn(random);

    return ret;
}


static int rsa_decrypt_data(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, int key_len, Bignum modulus, Bignum exp)
{
	Bignum b1, b2;
	int i;
	int len;
	int data_len;
	char *p;

	b1 = bignum_from_bytes(in_data, in_len);

	b2 = rsa_decrypt_blind(b1, modulus, exp);
	freebn(b1);

	len = ((bignum_bitcount(b2) + 7) >> 3);

	p = malloc(len);

	for (i = len - 1; i >= 0; i--) {
		p[len - 1 - i] = bignum_byte(b2, i);
    }

	data_len = *(int*)&p[8];
	if ((unsigned int)data_len > (unsigned int)out_len)
	{
		free(p);
		freebn(b2);
		return 0;
	}

	memcpy(out_data, &p[len - data_len], data_len);
	free(p);
	freebn(b2);

	return data_len;
}

static Bignum rsa_encrypt_op(Bignum input, Bignum modulus, Bignum exp)
{
    return modpow(input, exp, modulus);
}

static Bignum rsa_encrypt_wrapper(unsigned char *data, int length, int key_len, Bignum modulus, Bignum exp)
{
    Bignum b1, result;
    int i;
	unsigned char *buf;

    if (key_len < length + 12)
		return NULL;		       /* RSA key too short! */

	buf = malloc(key_len);
	memcpy(buf + key_len - length, data, length);
	*(int *)(&buf[8]) = length;

	buf[0] = 1;
//	buf[1] = 2;
    for (i = 1; i < 8; i++) {
		do {
			buf[i] = random_byte();
		} while (buf[i] == 0);
    }

	for (i = 12; i < key_len - length; i++) {
		do {
			buf[i] = random_byte();
		} while (buf[i] == 0);
    }
//    buf[key_len - length - 1] = 0;

    b1 = bignum_from_bytes(buf, key_len);
	result = rsa_encrypt_op(b1, modulus, exp);

    freebn(b1);
	free(buf);
	return result;
}

static int rsa_encrypt_data(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, int key_len, Bignum modulus, Bignum exp)
{
	Bignum bn;
	int i, len;

	bn = rsa_encrypt_wrapper(in_data, in_len, key_len, modulus, exp);
	if (!bn)
		return 0;
	
	len = ((bignum_bitcount(bn) + 7) >> 3);
	if (len > out_len)
	{
		freebn(bn);
		return 0;
	}
	
	for (i = len - 1; i >= 0; i--) {
		out_data[len - 1 - i] = bignum_byte(bn, i);
    }

	freebn(bn);
	return len;
}

int rsa_encrypt_public(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key)
{
	return rsa_encrypt_data(in_data, in_len, out_data, out_len, key->bytes, key->modulus, key->exponent);
}

int rsa_encrypt_private(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key)
{
	return rsa_encrypt_data(in_data, in_len, out_data, out_len, key->bytes, key->modulus, key->private_exponent);
}

int rsa_decrypt_public(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key)
{
	return rsa_decrypt_data(in_data, in_len, out_data, out_len, key->bytes, key->modulus, key->exponent);
}

int rsa_decrypt_private(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key)
{
	return rsa_decrypt_data(in_data, in_len, out_data, out_len, key->bytes, key->modulus, key->private_exponent);
}



void freersakey(struct RSAKey *key)
{
    if (key->modulus)
	freebn(key->modulus);
    if (key->exponent)
	freebn(key->exponent);
    if (key->private_exponent)
	freebn(key->private_exponent);
    if (key->comment)
	sfree(key->comment);
}

