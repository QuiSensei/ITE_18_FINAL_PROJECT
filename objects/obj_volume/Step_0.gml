image_index = global.volume;
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)){
	global.volume = (global.volume + 1) % 4;
	scr_bgm_volume(global.volume * 0.12);
	
	global.save[? "volume"] = global.volume;
}