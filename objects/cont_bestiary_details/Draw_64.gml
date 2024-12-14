draw_sprite(spr_icon, 0, 64, 64);

if(sprite_exists(sprite_index)){
	draw_sprite(sprite_index, 0, 160 + sprite_get_xoffset(sprite_index) - sprite_get_width(sprite_index)/2, 160 + sprite_get_yoffset(sprite_index) - sprite_get_height(sprite_index)/2);
}

draw_set_font_format(fnt_button, fa_left, fa_top, c_black);
draw_text(288,64,name);
draw_text_ext(288,100,description, string_height("M")+5, 512);