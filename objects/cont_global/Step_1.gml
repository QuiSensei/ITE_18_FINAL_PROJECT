if(mouse_check_button_pressed(mb_left)){
	var button_inst = instance_position_top(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_ui);
	if(button_inst){
		with(button_inst) event_perform(ev_other, ev_user0);
	}
	else{
		global.game_click = true;
	}
}
else{
	global.game_click = false;
}

if(!instance_exists(obj_global_notification) && !ds_list_empty(global.earned_achievements)){
	create_global_notice(global.earned_achievements[| 0]);
	ds_list_delete(global.earned_achievements, 0);
}