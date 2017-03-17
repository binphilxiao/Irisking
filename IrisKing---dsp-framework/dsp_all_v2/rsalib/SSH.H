#include <stdio.h>
#include <string.h>

#include "puttymem.h"
//#include "network.h"
#include "int64.h"
#include "misc.h"

struct ssh_channel;

extern void sshfwd_close(struct ssh_channel *c);
extern int sshfwd_write(struct ssh_channel *c, char *, int);
extern void sshfwd_unthrottle(struct ssh_channel *c, int bufsize);

/*
 * Useful thing.
 */
#ifndef lenof
#define lenof(x) ( (sizeof((x))) / (sizeof(*(x))))
#endif

#define SSH_CIPHER_IDEA		1
#define SSH_CIPHER_DES		2
#define SSH_CIPHER_3DES		3
#define SSH_CIPHER_BLOWFISH	6

#ifdef MSCRYPTOAPI
#define APIEXTRA 8
#else
#define APIEXTRA 0
#endif

#ifndef BIGNUM_INTERNAL
typedef void *Bignum;
#endif

struct RSAKey {
    int bits;
    int bytes;

    Bignum modulus;
    Bignum exponent;
    Bignum private_exponent;
    Bignum p;
    Bignum q;
    Bignum iqmp;

    char *comment;
};

struct dss_key {
    Bignum p, q, g, y, x;
};

int makekey(unsigned char *data, int len, struct RSAKey *result,
	    unsigned char **keystr, int order);
int makeprivate(unsigned char *data, int len, struct RSAKey *result);
int rsaencrypt(unsigned char *data, int length, struct RSAKey *key);
Bignum rsadecrypt(Bignum input, struct RSAKey *key);
void rsasign(unsigned char *data, int length, struct RSAKey *key);
void rsasanitise(struct RSAKey *key);
int rsastr_len(struct RSAKey *key);
void rsastr_fmt(char *str, struct RSAKey *key);
void rsa_fingerprint(char *str, int len, struct RSAKey *key);
int rsa_verify(struct RSAKey *key);
unsigned char *rsa_public_blob(struct RSAKey *key, int *len);
int rsa_public_blob_len(void *data, int maxlen);
void freersakey(struct RSAKey *key);

int rsa_encrypt_public(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key);
int rsa_encrypt_private(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key);
int rsa_decrypt_public(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key);
int rsa_decrypt_private(unsigned char *in_data, int in_len, unsigned char *out_data, int out_len, struct RSAKey *key);




typedef unsigned int word32;
typedef unsigned int uint32;

unsigned long crc32_compute(const void *s, size_t len);
unsigned long crc32_update(unsigned long crc_input, const void *s, size_t len);

/* SSH CRC compensation attack detector */
void *crcda_make_context(void);
void crcda_free_context(void *handle);
int detect_attack(void *handle, unsigned char *buf, uint32 len,
		  unsigned char *IV);

typedef struct {
    uint32 h[4];
} MD5_Core_State;

struct MD5Context {
#ifdef MSCRYPTOAPI
    unsigned long hHash;
#else
    MD5_Core_State core;
    unsigned char block[64];
    int blkused;
    uint32 lenhi, lenlo;
#endif
};

void MD5Init(struct MD5Context *context);
void MD5Update(struct MD5Context *context, unsigned char const *buf,
	       unsigned len);
void MD5Final(unsigned char digest[16], struct MD5Context *context);
void MD5Simple(void const *p, unsigned len, unsigned char output[16]);

void *hmacmd5_make_context(void);
void hmacmd5_free_context(void *handle);
void hmacmd5_key(void *handle, void const *key, int len);
void hmacmd5_do_hmac(void *handle, unsigned char const *blk, int len,
		     unsigned char *hmac);

typedef struct {
    uint32 h[5];
    unsigned char block[64];
    int blkused;
    uint32 lenhi, lenlo;
} SHA_State;
void SHA_Init(SHA_State * s);
void SHA_Bytes(SHA_State * s, void *p, int len);
void SHA_Final(SHA_State * s, unsigned char *output);
void SHA_Simple(void *p, int len, unsigned char *output);

void hmac_sha1_simple(void *key, int keylen, void *data, int datalen,
		      unsigned char *output);
typedef struct {
    uint32 h[8];
    unsigned char block[64];
    int blkused;
    uint32 lenhi, lenlo;
} SHA256_State;
void SHA256_Init(SHA256_State * s);
void SHA256_Bytes(SHA256_State * s, const void *p, int len);
void SHA256_Final(SHA256_State * s, unsigned char *output);
void SHA256_Simple(const void *p, int len, unsigned char *output);

typedef struct {
    uint64 h[8];
    unsigned char block[128];
    int blkused;
    uint32 len[4];
} SHA512_State;
void SHA512_Init(SHA512_State * s);
void SHA512_Bytes(SHA512_State * s, const void *p, int len);
void SHA512_Final(SHA512_State * s, unsigned char *output);
void SHA512_Simple(const void *p, int len, unsigned char *output);

struct ssh_cipher {
    void *(*make_context)(void);
    void (*free_context)(void *);
    void (*sesskey) (void *, unsigned char *key);	/* for SSH-1 */
    void (*encrypt) (void *, unsigned char *blk, int len);
    void (*decrypt) (void *, unsigned char *blk, int len);
    int blksize;
    char *text_name;
};

struct ssh2_cipher {
    void *(*make_context)(void);
    void (*free_context)(void *);
    void (*setiv) (void *, unsigned char *key);	/* for SSH-2 */
    void (*setkey) (void *, unsigned char *key);/* for SSH-2 */
    void (*encrypt) (void *, unsigned char *blk, int len);
    void (*decrypt) (void *, unsigned char *blk, int len);
    char *name;
    int blksize;
    int keylen;
    unsigned int flags;
#define SSH_CIPHER_IS_CBC	1
    char *text_name;
};

struct ssh2_ciphers {
    int nciphers;
    const struct ssh2_cipher *const *list;
};

struct ssh_mac {
    void *(*make_context)(void);
    void (*free_context)(void *);
    void (*setkey) (void *, unsigned char *key);
    void (*generate) (void *, unsigned char *blk, int len, unsigned long seq);
    int (*verify) (void *, unsigned char *blk, int len, unsigned long seq);
    char *name;
    int len;
    char *text_name;
};

struct ssh_hash {
    void *(*init)(void); /* also allocates context */
    void (*bytes)(void *, void *, int);
    void (*final)(void *, unsigned char *); /* also frees context */
    int hlen; /* output length in bytes */
    char *text_name;
};   

struct ssh_kex {
    /*
     * Plugging in another KEX algorithm requires structural chaos,
     * so it's hard to abstract them into nice little structures
     * like this. Fortunately, all our KEXes are basically
     * Diffie-Hellman at the moment, so in this structure I simply
     * parametrise the DH exchange a bit.
     */
    char *name, *groupname;
    const unsigned char *pdata, *gdata;/* NULL means use group exchange */
    int plen, glen;
    const struct ssh_hash *hash;
};

struct ssh_kexes {
    int nkexes;
    const struct ssh_kex *const *list;
};

struct ssh_signkey {
    void *(*newkey) (char *data, int len);
    void (*freekey) (void *key);
    char *(*fmtkey) (void *key);
    unsigned char *(*public_blob) (void *key, int *len);
    unsigned char *(*private_blob) (void *key, int *len);
    void *(*createkey) (unsigned char *pub_blob, int pub_len,
			unsigned char *priv_blob, int priv_len);
    void *(*openssh_createkey) (unsigned char **blob, int *len);
    int (*openssh_fmtkey) (void *key, unsigned char *blob, int len);
    int (*pubkey_bits) (void *blob, int len);
    char *(*fingerprint) (void *key);
    int (*verifysig) (void *key, char *sig, int siglen,
		      char *data, int datalen);
    unsigned char *(*sign) (void *key, char *data, int datalen,
			    int *siglen);
    char *name;
    char *keytype;		       /* for host key cache */
};

struct ssh_compress {
    char *name;
    void *(*compress_init) (void);
    void (*compress_cleanup) (void *);
    int (*compress) (void *, unsigned char *block, int len,
		     unsigned char **outblock, int *outlen);
    void *(*decompress_init) (void);
    void (*decompress_cleanup) (void *);
    int (*decompress) (void *, unsigned char *block, int len,
		       unsigned char **outblock, int *outlen);
    int (*disable_compression) (void *);
    char *text_name;
};

struct ssh2_userkey {
    const struct ssh_signkey *alg;     /* the key algorithm */
    void *data;			       /* the key data */
    char *comment;		       /* the key comment */
};



#ifndef MSCRYPTOAPI
void SHATransform(word32 * digest, word32 * data);
#endif

int random_byte(void);
void random_add_noise(void *noise, int length);
void random_add_heavynoise(void *noise, int length);

void logevent(void *, const char *);



Bignum copybn(Bignum b);
Bignum bn_power_2(int n);
void bn_restore_invariant(Bignum b);
Bignum bignum_from_long(unsigned long n);
void freebn(Bignum b);
Bignum modpow(Bignum base, Bignum exp, Bignum mod);
Bignum modmul(Bignum a, Bignum b, Bignum mod);
void decbn(Bignum n);
extern Bignum Zero, One;
Bignum bignum_from_bytes(const unsigned char *data, int nbytes);
int ssh1_read_bignum(const unsigned char *data, int len, Bignum * result);
int bignum_bitcount(Bignum bn);
int ssh1_bignum_length(Bignum bn);
int ssh2_bignum_length(Bignum bn);
int bignum_byte(Bignum bn, int i);
int bignum_bit(Bignum bn, int i);
void bignum_set_bit(Bignum bn, int i, int value);
int ssh1_write_bignum(void *data, Bignum bn);
Bignum biggcd(Bignum a, Bignum b);
unsigned short bignum_mod_short(Bignum number, unsigned short modulus);
Bignum bignum_add_long(Bignum number, unsigned long addend);
Bignum bigmul(Bignum a, Bignum b);
Bignum bigmuladd(Bignum a, Bignum b, Bignum addend);
Bignum bigdiv(Bignum a, Bignum b);
Bignum bigmod(Bignum a, Bignum b);
Bignum modinv(Bignum number, Bignum modulus);
Bignum bignum_bitmask(Bignum number);
Bignum bignum_rshift(Bignum number, int shift);
int bignum_cmp(Bignum a, Bignum b);
char *bignum_decimal(Bignum x);

#ifdef DEBUG
void diagbn(char *prefix, Bignum md);
#endif

int loadrsakey(const Filename *filename, struct RSAKey *key,
	       char *passphrase, const char **errorstr);
int rsakey_encrypted(const Filename *filename, char **comment);
int rsakey_pubblob(const Filename *filename, void **blob, int *bloblen,
		   char **commentptr, const char **errorstr);

int saversakey(const Filename *filename, struct RSAKey *key, char *passphrase);


/* ssh2_load_userkey can return this as an error */
extern struct ssh2_userkey ssh2_wrong_passphrase;
#define SSH2_WRONG_PASSPHRASE (&ssh2_wrong_passphrase)

int ssh2_userkey_encrypted(const Filename *filename, char **comment);
struct ssh2_userkey *ssh2_load_userkey(const Filename *filename,
				       char *passphrase, const char **errorstr);
unsigned char *ssh2_userkey_loadpub(const Filename *filename, char **algorithm,
				    int *pub_blob_len, char **commentptr,
				    const char **errorstr);
int ssh2_save_userkey(const Filename *filename, struct ssh2_userkey *key,
		      char *passphrase);
const struct ssh_signkey *find_pubkey_alg(const char *name);


/*
 * For progress updates in the key generation utility.
 */
#define PROGFN_INITIALISE 1
#define PROGFN_LIN_PHASE 2
#define PROGFN_EXP_PHASE 3
#define PROGFN_PHASE_EXTENT 4
#define PROGFN_READY 5
#define PROGFN_PROGRESS 6
typedef void (*progfn_t) (void *param, int action, int phase, int progress);

int rsa_generate(struct RSAKey *key, int bits, progfn_t pfn,
		 void *pfnparam);
int dsa_generate(struct dss_key *key, int bits, progfn_t pfn,
		 void *pfnparam);
Bignum primegen(int bits, int modulus, int residue, Bignum factor,
		int phase, progfn_t pfn, void *pfnparam);


