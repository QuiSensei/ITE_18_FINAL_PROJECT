draw_sprite_ext(spr_cursor, 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 1, 1, current_time/10, c_white, 1);

if(instance_exists(obj_player)){
	var _x;
	switch(obj_player.current_tool){
		case TOOLS.glass:
			_x = inst_examine_button.x;
			break;
		case TOOLS.claw:
			_x = inst_claw_button.x;
			break;
		case TOOLS.poker:
			_x = inst_poke_button.x;
			break;
	}
	
	draw_sprite(spr_arrow, 0, _x + inst_examine_button.sprite_width/2, inst_examine_button.bbox_top-3);
}