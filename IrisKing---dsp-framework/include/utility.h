#ifndef _UTILITY_HELPER_FUNC_H
#define _UTILITY_HELPER_FUNC_H


// ============================== DISP ==============================

#define RGB(R, G, B) ((R >> 3) << 11 | (G >> 2) << 5 | (B >> 3))


/*
	disp_init init some global variables,
	this function must be called first
 */
void disp_init();

/*
	disp_set_stamp set information about the stamp;
	bmp: the pixel array information, total (width * height) pixels
	mask: each bit determins whether to show the corresponding pixel in bmp
	top: the y-coordinate of the stamp in a 320*240 window
	left: the x-coordinate of the stamp in a 320*240 window
	width, height: the width and height of the stamp, the width must be a a multipler of 8

 */
void disp_set_stamp(unsigned short *bmp, unsigned char *mask, int top, int left, int width, int height);

/*
	downsample left_y, right_y, and show contents in window
	show_stamp determins whether show stamp on screen
 */
int disp_rgb565(unsigned char * left_y, unsigned char * right_y, unsigned short *restrict rgb, int show_stamp);
/*
	draw a solid box with top-left (x1, y1) and bottom-right (x2, y2)
 */
int disp_draw_box(int x1, int x2, int y1, int y2, int color, unsigned short *restrict rgb);


/*
	this function calculate alpha * c1 + (1 - alpha) * c2
	the alpha here is constant
 */
unsigned short disp_alpha_blend(unsigned short c1, unsigned short c2);


/*
	draw bottom half of screen
 */
int disp_draw_half_frame(unsigned short *restrict rgb);


/*
	get mac address
 */
int get_mac(unsigned char usr_mac[6]);


#endif //_UTILITY_HELPER_FUNC_H

