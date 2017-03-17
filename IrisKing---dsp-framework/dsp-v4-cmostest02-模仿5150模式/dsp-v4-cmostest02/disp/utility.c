#include <csl.h>
#include <csl_dat.h>
#include <stdio.h>
#include <assert.h>
#include "utility.h"

#define NORMAL_DISPLAY		0



#define GS_WHITE	212
#define COLOR_WHITE RGB(GS_WHITE, GS_WHITE, GS_WHITE)

#define ALPHA_FRACTION	4
#define ALPHA_COEF	(6 << ALPHA_FRACTION / 10)

#define ALPHA_BLEND_8B(v1, v2) (unsigned char)(( ALPHA_COEF * (int)v1 + ((1 << ALPHA_FRACTION) - ALPHA_COEF) * (int)v2) >> ALPHA_FRACTION)


#define WINDOW_B_V_THICK 	2
#define WINDOW_TOP			6
#define WINDOW_BOTTOM		(240 - 6)

#define INNER_B_H_THICK	3
#define INNER_B_V_THICK	2

#define INNER_B_TOP		(WINDOW_TOP + 8)
#define INNER_B_BOTTOM 	(WINDOW_BOTTOM - 8)

#define INNER_B_LEFT	16
#define INNER_B_RIGHT	(320 - INNER_B_LEFT - INNER_B_H_THICK)


static int cb_h_thick, cb_v_thick, cb_top, cb_bottom, cb_left, cb_right, cb_color;


#define LEFT_LOGO_X 24
#define RIGHT_LOGO_X (640 - LEFT_LOGO_X - 32)
#define LOGO_START_LINE (WINDOW_TOP + 15)

// logo size is 32*32

static unsigned int left_logo[32] = {
0xff0000ff, 0xff0000ff, 0xc0000003, 0xc0000003, 0xc0000003, 0xc0000003, 0xc0003e03, 0xc0003e03, 
0x00003e00, 0x00003e00, 0x00003e00, 0x00003e00, 0x00003e00, 0x00003e00, 0x00003e00, 0x00003e00, 
0x00003e00, 0x00003e00, 0x00003e00, 0x00003e00, 0x007ffe00, 0x007ffe00, 0x007ffe00, 0x007ffe00, 
0xc07ffe03, 0xc0000003, 0xc0000003, 0xc0000003, 0xc0000003, 0xc0000003, 0xff0000ff, 0xff0000ff, 
};

static unsigned int right_logo[32] = {
0xff0000ff, 0xff0000ff, 0xc0000003, 0xc0000003, 0xc0000003, 0xc0000003, 0xc007ff83, 0xc03fff83, 
0x007fff80, 0x007fff80, 0x007c0f80, 0x007c0f80, 0x007c0f80, 0x007fff80, 0x003fff80, 0x000fff80, 
0x0007ff80, 0x000f8f80, 0x001f0f80, 0x003e0f80, 0x003e0f80, 0x007c0f80, 0x007c0f80, 0x00f80f80, 
0xc0f80f83, 0xc0000003, 0xc0000003, 0xc0000003, 0xc0000003, 0xc0000003, 0xff0000ff, 0xff0000ff, 
};

#pragma DATA_SECTION (color_background, "l2_section");
#pragma DATA_SECTION (color_l_edge, "l2_section");
#pragma DATA_SECTION (color_r_edge, "l2_section");
static double color_background;
static double color_l_edge, color_r_edge;
static unsigned short color_bk;


#pragma DATA_ALIGN (L2_buffer, 128);
#pragma DATA_SECTION (L2_buffer, "l2_section");
unsigned char L2_buffer[32 * 1024]; //64K buffer

#define SWAP(p0, p1) { \
						void *temp;\
						temp = p1;\
						p1 = p0;\
						p0 = temp;\
						}

#define FLUSH_LINE_COUNT	8
#define FETCH_LINE			2

static int stamp_left, stamp_top;
static int stamp_width, stamp_height;
static unsigned short *stamp_bmp = NULL;
static unsigned char *stamp_mask = NULL;

static unsigned short _conv_565(unsigned char c)
{
	union
	{
		struct {
			unsigned int b : 5;
			unsigned int g : 6;
			unsigned int r : 5;
		} rgb;
		unsigned short rgb_c;
	} u;
		
	u.rgb.g = (c >> 2);
	u.rgb.b = u.rgb.r = (c >> 3);
	return u.rgb_c;
}

static void _process_line(unsigned char * restrict source, unsigned char * restrict dest, int line_no, int show_stamp)
{
	int i;
	unsigned short *line = (unsigned short *)dest;
	unsigned char* p;
	union {
		unsigned char c[8];
		unsigned short s[4];
		unsigned int i[2];
		double d;
	} s0;
	
	_amemd8(dest) = color_background;
	_amemd8(dest + 8) = color_l_edge;

	dest += 16;
	for (i = 2, p = source + 16; i < 640 / 8 - 2; i++, p += 8)
	{
		s0.d = _amemd8_const(p);
		
		s0.s[0] = _conv_565(s0.c[0]);
		s0.s[1] = _conv_565(s0.c[2]);
		s0.s[2] = _conv_565(s0.c[4]);
		s0.s[3] = _conv_565(s0.c[6]);
		_amemd8(dest) = s0.d;

		dest += 8;
	}

	_amemd8(dest) = color_r_edge;
	_amemd8(dest + 8) = color_background;

	if ((line_no >= INNER_B_TOP && line_no < INNER_B_TOP + INNER_B_V_THICK) || 
		(line_no >= INNER_B_BOTTOM && line_no < INNER_B_BOTTOM + INNER_B_V_THICK))
	{
		for (i = INNER_B_LEFT; i < INNER_B_RIGHT + INNER_B_H_THICK; i++)
			line[i] = _conv_565(ALPHA_BLEND_8B(GS_WHITE, source[i * 2]));
	}

	if ((line_no >= INNER_B_TOP + INNER_B_V_THICK)  && (line_no < INNER_B_BOTTOM))
	{
		for (i = 0; i < INNER_B_H_THICK; i++)
		{
			line[INNER_B_LEFT + i] = _conv_565(ALPHA_BLEND_8B(GS_WHITE, source[(INNER_B_LEFT + i) * 2]));
			line[INNER_B_RIGHT + i] = _conv_565(ALPHA_BLEND_8B(GS_WHITE, source[(INNER_B_RIGHT + i) * 2]));
		}
		
	}


	if (cb_color)
	{
		if ((line_no >= cb_top && line_no < cb_top + cb_v_thick) || 
			(line_no >= cb_bottom && line_no < cb_bottom + cb_v_thick))
		{
			for (i = cb_left; i < cb_right + cb_h_thick; i++)
				line[i] = disp_alpha_blend(cb_color, _conv_565(source[i * 2]));
		}

		if ((line_no >= cb_top + cb_v_thick)  && (line_no < cb_bottom))
		{
			for (i = 0; i < cb_h_thick; i++)
			{
				line[cb_left + i] = disp_alpha_blend(cb_color, _conv_565(source[(cb_left + i) * 2]));
				line[cb_right + i] = disp_alpha_blend(cb_color, _conv_565(source[(cb_right + i) * 2]));
			}
			
		}
	}

	if (!show_stamp)
		return;

	if ((line_no >= stamp_top) && (line_no < stamp_top + stamp_height))
	{
		int n, j;
		unsigned short *bmp;
		unsigned char *mask;
		unsigned char m;

		n = line_no - stamp_top;
		bmp = stamp_bmp + n * stamp_width;
		mask = stamp_mask + n * stamp_width / 8;

		for (i = 0; i < stamp_width; i += 8)
		{
			m = mask[i >> 3];

			for (j = 0; j < 8; j ++)
			{
				if (m & (1 << j))
				{
					line[stamp_left + i + j] = bmp[i + j];
				}
			}
		}
	}

}


static void _set_logo(unsigned short* line, int line_no)
{
	int i;
	unsigned int l_logo, r_logo;

	//set logo
	if ((line_no < LOGO_START_LINE) || (line_no > LOGO_START_LINE + 32 - 1))
		return;

	i = line_no	- LOGO_START_LINE;
	
	l_logo = left_logo[i];
	r_logo = right_logo[i];
	
	for (i = 0; i < 32; i ++)
	{
		if (l_logo & (1 << i))
			line[LEFT_LOGO_X + i] = COLOR_WHITE;

		if (r_logo & (1 << i))
			line[RIGHT_LOGO_X + i] = COLOR_WHITE;
	}

}

void disp_init()                                                                                    
{                                                                                                   
	unsigned short c_bk[4] = {RGB(15, 44, 129), RGB(15, 44, 129), RGB(15, 44, 129), RGB(15, 44, 129)}; 
	unsigned short c_le[4] = {RGB(15, 44, 129), COLOR_WHITE, COLOR_WHITE, COLOR_WHITE};                
	unsigned short c_re[4] = {COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, RGB(15, 44, 129)};                
	                                                                                             
	memcpy(&color_background, c_bk, sizeof(double));                                                   
	memcpy(&color_l_edge, c_le, sizeof(double));                                                       
	memcpy(&color_r_edge, c_re, sizeof(double));                                                       
	                                                                                             
	color_bk = RGB(15, 44, 129);                                                                       
}                                                                                                   

/*
void disp_init()
{
	
	unsigned short c_bk[4] = {RGB(128, 128, 105), RGB(128, 128, 105), RGB(128, 128, 105), RGB(128, 128, 105)};
	unsigned short c_le[4] = {RGB(128, 128, 105), COLOR_WHITE, COLOR_WHITE, COLOR_WHITE};
	unsigned short c_re[4] = {COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, RGB(128, 128, 105)};

	memcpy(&color_background, c_bk, sizeof(double));
	memcpy(&color_l_edge, c_le, sizeof(double));         // left edge' pattern
	memcpy(&color_r_edge, c_re, sizeof(double));         // right edge's pattern

	color_bk = RGB(128, 128, 105);            // back ground RGB           
}
*/
void disp_set_stamp(unsigned short *bmp, unsigned char *mask, int top, int left, int width, int height)
{
	stamp_left = left;
	stamp_top = top;

	stamp_bmp = bmp;
	stamp_mask = mask;

	stamp_width = width;
	stamp_height = height;

}

int disp_set_cb( int h_thick,  int v_thick, int top, int bottom, int left, int right, int color)
{

	cb_h_thick = h_thick;
	cb_v_thick = v_thick;
	cb_top = top;
	cb_bottom = bottom;
	cb_left	= left;
	cb_right = right;
	cb_color = color;

	return 0;
}


int disp_rgb565(unsigned char * left_y, unsigned char * right_y, unsigned short *restrict rgb, int show_stamp)
{
	int i, j;
	unsigned char* raw_buffer_l = L2_buffer;
	unsigned char* raw_buffer_r = L2_buffer + 640 * FETCH_LINE * 2; //pingpong buffer, twice as large
	unsigned short* rgb_buffer = (unsigned short*)(L2_buffer + 640 * FETCH_LINE * 4);

	unsigned char *cur_l, *next_l, *cur_r, *next_r;
	unsigned short *cur_rgb, *next_rgb, *dest;
	unsigned short *rgb_ptr;

	unsigned int id_l, id_r;
	unsigned int new_id_l, new_id_r;
	int rgb_line_count;
	int disp_line_count = 0;


	//init the global vaiable
	disp_line_count = WINDOW_TOP + WINDOW_B_V_THICK;	

	cur_l = raw_buffer_l;
	next_l = cur_l + 640 * FETCH_LINE;

	cur_r = raw_buffer_r;
	next_r = cur_r + 640 * FETCH_LINE;

	cur_rgb = rgb_buffer;
	next_rgb = cur_rgb + 640 * FLUSH_LINE_COUNT;


#if NORMAL_DISPLAY
	id_l = DAT_copy2d(DAT_2D1D, left_y + disp_line_count * 2 * 640, cur_l, 640, FETCH_LINE, 640 * 2);
	id_r = DAT_copy2d(DAT_2D1D, right_y + disp_line_count * 2 * 640, cur_r, 640, FETCH_LINE, 640 * 2);
#else
	id_l = DAT_copy(left_y + 640 * (480 - disp_line_count - FETCH_LINE * 2), cur_l, 640 * FETCH_LINE);
	id_r = DAT_copy(right_y + 640 * (480 - disp_line_count - FETCH_LINE * 2), cur_r, 640 * FETCH_LINE);
#endif

	rgb_ptr = rgb + (240 + WINDOW_TOP + WINDOW_B_V_THICK) * 640;

	dest = cur_rgb;
	rgb_line_count = 0;

	for (i = WINDOW_TOP + WINDOW_B_V_THICK; i < WINDOW_BOTTOM; i += FETCH_LINE)
	{
#if NORMAL_DISPLAY
		new_id_l = DAT_copy2d(DAT_2D1D, left_y + (i + FETCH_LINE)* 2 * 640, next_l, 640, FETCH_LINE, 640 * 2);
		new_id_r = DAT_copy2d(DAT_2D1D, right_y + (i + FETCH_LINE) * 2 * 640, next_r, 640, FETCH_LINE, 640 * 2);
#else
		new_id_l = DAT_copy2d(DAT_2D1D, left_y + (480 - (i + FETCH_LINE)* 2) * 640, next_l, 640, FETCH_LINE, 640 * 2);
		new_id_r = DAT_copy2d(DAT_2D1D, right_y + (480 - (i + FETCH_LINE) * 2) * 640, next_r, 640, FETCH_LINE, 640 * 2);
#endif
		
		DAT_wait(id_l);
		id_l = new_id_l;
		
		for (j = 0; j < FETCH_LINE; j++)
		{
#if NORMAL_DISPLAY
			_process_line(cur_l + j * 640, (unsigned char*)(dest + j * 640), disp_line_count + j, show_stamp);
#else
			_process_line(cur_l + (FETCH_LINE - j - 1) * 640, (unsigned char*)(dest + j * 640), disp_line_count + j, show_stamp);
#endif
		}

		SWAP(cur_l, next_l);

		DAT_wait(id_r);
		id_r = new_id_r;

		for (j = 0; j < FETCH_LINE; j++)
		{
#if NORMAL_DISPLAY
			_process_line(cur_r + j * 640, (unsigned char*)(dest + 320 + j * 640), disp_line_count + j, show_stamp);
#else
			_process_line(cur_r + (FETCH_LINE - j - 1) * 640, (unsigned char*)(dest + 320 + j * 640), disp_line_count + j, show_stamp);
#endif
		}

		for (j = 0; j < FETCH_LINE; j++)
			_set_logo(dest + j * 640, disp_line_count + j);
				
		SWAP(cur_r, next_r);

		disp_line_count += FETCH_LINE;
		rgb_line_count += FETCH_LINE;
		dest = dest + 640 * FETCH_LINE;

		if (rgb_line_count == FLUSH_LINE_COUNT)
		{
			DAT_copy(cur_rgb, rgb_ptr, 640 * 2 * FLUSH_LINE_COUNT);

			rgb_ptr += FLUSH_LINE_COUNT * 640; 

			dest = next_rgb;
			SWAP(cur_rgb, next_rgb);
			rgb_line_count = 0;
		}
	}

	//check if we exceed the window bottom...
	assert(disp_line_count >= WINDOW_BOTTOM);
	
	rgb_line_count -= disp_line_count - WINDOW_BOTTOM;

	if (rgb_line_count)
		DAT_copy(cur_rgb, rgb_ptr, 640 * 2 * rgb_line_count);

	return 0;
}

int disp_draw_box(int x1, int x2, int y1, int y2, int color, unsigned short *restrict rgb)
{
	int x, y;
	for (y = y1; y <= y2; y++)
		for (x = x1; x <= x2; x++)
			rgb[y * 640 + x] = color;

	return 1;
}

static int _alpha_blend_nbit(int i1, int i2, int n)
{

	return (ALPHA_BLEND_8B((i1 << (8 - n)), (i2<< (8 - n)))) >> (8 - n);

}

unsigned short disp_alpha_blend(unsigned short c1, unsigned short c2)
{
	union
	{
		struct {
			unsigned int b : 5;
			unsigned int g : 6;
			unsigned int r : 5;
		} rgb;
		unsigned short rgb_c;
	} u1, u2, u;
	
	u1.rgb_c = c1;
	u2.rgb_c = c2;

	u.rgb.b = _alpha_blend_nbit(u1.rgb.b, u2.rgb.b, 5);
	u.rgb.g = _alpha_blend_nbit(u1.rgb.g, u2.rgb.g, 6);
	u.rgb.r = _alpha_blend_nbit(u1.rgb.r, u2.rgb.r, 5);

	return u.rgb_c;

}

int disp_draw_half_frame(unsigned short *restrict rgb)
{
	int i = 0;
	unsigned short *dest;
	int j;
	unsigned char *p;

	disp_draw_box(0, 639, 240, 240 + WINDOW_TOP + WINDOW_B_V_THICK - 1, color_bk, rgb);
	disp_draw_box(0, 639, 240 + WINDOW_BOTTOM, 479, color_bk, rgb);

	disp_draw_box(5, 320 - 6,     	240 + WINDOW_TOP, 		240 + WINDOW_TOP + WINDOW_B_V_THICK - 1, COLOR_WHITE, rgb);
	disp_draw_box(320 + 5, 640 - 6, 240 + WINDOW_TOP, 		240 + WINDOW_TOP + WINDOW_B_V_THICK - 1, COLOR_WHITE, rgb);

	disp_draw_box(5, 320 - 6, 		240 + WINDOW_BOTTOM,	240 + WINDOW_BOTTOM + WINDOW_B_V_THICK - 1, COLOR_WHITE, rgb);
	disp_draw_box(320 + 5, 640 - 6, 240 + WINDOW_BOTTOM, 	240 + WINDOW_BOTTOM + WINDOW_B_V_THICK - 1, COLOR_WHITE, rgb);

	dest = rgb + (240 + WINDOW_TOP + WINDOW_B_V_THICK) * 640;

	for (j = WINDOW_TOP + WINDOW_B_V_THICK; j < WINDOW_BOTTOM; j ++, dest += 640)
	{

		_amemd8(&dest[0]) = color_background;
		_amemd8(&dest[4]) = color_l_edge;

		_amemd8(&dest[320 - 8]) = color_r_edge;
		_amemd8(&dest[320 - 4]) = color_background;

		_amemd8(&dest[320 + 0]) = color_background;
		_amemd8(&dest[320 + 4]) = color_l_edge;


		_amemd8(&dest[640 - 8]) = color_r_edge;
		_amemd8(&dest[640 - 4]) = color_background;

		for (i = 2, p = (unsigned char*)&dest[8]; i < 640 / 8 - 2; i++, p += 8)
		{
			_amemd8(p) = color_background;
			_amemd8(p + 320 * 2) = color_background;
		}


		if ((j >= INNER_B_TOP && j < INNER_B_TOP + INNER_B_V_THICK) || 
			(j >= INNER_B_BOTTOM && j < INNER_B_BOTTOM + INNER_B_V_THICK))
		{
			for (i = INNER_B_LEFT; i < INNER_B_RIGHT + INNER_B_H_THICK; i++)
			{
				dest[i] = disp_alpha_blend(COLOR_WHITE, color_bk);
				dest[320 + i] = disp_alpha_blend(COLOR_WHITE, color_bk);
			}
		}

		if ((j >= INNER_B_TOP + INNER_B_V_THICK)  && (j < INNER_B_BOTTOM))
		{
			for (i = 0; i < INNER_B_H_THICK; i++)
			{
				dest[INNER_B_LEFT + i] = disp_alpha_blend(COLOR_WHITE, color_bk);
				dest[INNER_B_RIGHT + i] = disp_alpha_blend(COLOR_WHITE, color_bk);

				dest[320 + INNER_B_LEFT + i] = disp_alpha_blend(COLOR_WHITE, color_bk);
				dest[320 + INNER_B_RIGHT + i] = disp_alpha_blend(COLOR_WHITE, color_bk);
			}
			
		}

		_set_logo(dest, j);
	}
	return 0;
}

void disp_direct(unsigned char* restrict org, unsigned short * restrict rgb)
{
	int i;
	int j;
	unsigned char *p_org;
	unsigned short *p_rgb;

	for (i = 0; i < 480; i++)
	{
		p_org = org + i * 640;
		p_rgb = rgb + (480 - i - 1) * 640;
		for (j = 0;  j < 640; j++)
		{
			p_rgb[j] = _conv_565(p_org[j]);
		}
	}

}

// mosaic befor display image -- aqiu777 2010-08-28
unsigned short onelinebuffer[640]={0};
void make_mosaic(unsigned char* org, unsigned char * mosaic)
{
	//int mosaic_height=4;
	//int mosaic_width=4;
	int mosaic_height=8;
	int mosaic_width=8;

	int i;
	int j;
	int k;
	unsigned char *p_org;
	unsigned char *p_mosaic;

	p_org = org;
	p_mosaic =mosaic;
	for (i = 0; i < 480; i=i+mosaic_height)
	{
		memset(onelinebuffer, 0, sizeof(unsigned short)*640);
		for (k=0 ; k <mosaic_height ; k++)
		{
			// each line
			for (j = 0;  j < 640; j++)
			{
				onelinebuffer[j] = onelinebuffer[j] + p_org[j];
			}
			p_org =p_org +640;			
		}
		
		for (k=0 ; k <640 ; k=k+mosaic_width)
		{
			onelinebuffer[k] =onelinebuffer[k] +onelinebuffer[k+1] +onelinebuffer[k+2] +onelinebuffer[k+3]
								+onelinebuffer[k+4] +onelinebuffer[k+5] +onelinebuffer[k+6] +onelinebuffer[k+7];
			onelinebuffer[k] =onelinebuffer[k]>>6; //4;
			onelinebuffer[k+1] =onelinebuffer[k];
			onelinebuffer[k+2] =onelinebuffer[k];
			onelinebuffer[k+3] =onelinebuffer[k];
			onelinebuffer[k+4] =onelinebuffer[k];
			onelinebuffer[k+5] =onelinebuffer[k];
			onelinebuffer[k+6] =onelinebuffer[k];
			onelinebuffer[k+7] =onelinebuffer[k];
		}
		for (k=0 ; k <mosaic_height ; k++)
		{
			// each line
			for (j = 0;  j < 640; j++)
			{
				p_mosaic[j] =(unsigned char)onelinebuffer[j];
			}
			p_mosaic =p_mosaic +640;			
		}
	}
}

