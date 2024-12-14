if(loc){
	var w = string_width(text), h = string_height(text), marg = 2;
	draw_set_color(c_white);
	draw_rectangle(x-w/2-marg,y-marg,x+w/2+marg,y+h+marg,false);
	draw_set_font_format(fnt_button, fa_center, fa_top, c_black);
	draw_text(x, y, text);
}