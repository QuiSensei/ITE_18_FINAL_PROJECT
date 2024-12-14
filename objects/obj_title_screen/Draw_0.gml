var ang = amp * sin(time * freq);

draw_set_font_format(fnt_title, fa_center, fa_middle, c_white);
//draw_text_transformed(focal_x + lengthdir_x(length, ang + 90),focal_y + lengthdir_y(length, ang + 90),"Upon The Great Pelagic",1,1,ang);

draw_sprite_ext(spr_title, 0, focal_x + lengthdir_x(length, ang + 90),focal_y + lengthdir_y(length, ang + 90), 1, 1, ang, c_white, 1);