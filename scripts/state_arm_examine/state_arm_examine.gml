function state_arm_examine(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
	
		case SM_EVENT.create:
			examination_progress = 0;
			break;
		
		case SM_EVENT.update:
			if(mouse_check_button(mb_left) && instance_exists(examination_target)){
				if(instance_position_tool(examination_target) || point_distance(x + target_x, y + target_y, examination_target.x, examination_target.y) < examination_large_range){
					examination_progress += 1;
					if(examination_progress >= 100){
						examination_progress = 100;
						bestiary_catalogue(examination_target.name);
						create_notification(examination_target, "Scanned Creature:\n"+examination_target.name)
						sm_switch(sm, state_arm_describe);
					}
				}
				else{
				}
			}
			else{
				sm_switch(sm, state_arm_idle);
			}
			break;
		
		case SM_EVENT.end_draw:
			if(instance_exists(examination_target)){
				var xpos = examination_target.x, ypos = examination_target.bbox_bottom + 5, txt = "Examining... " + string(examination_progress) + "%";
			
				var w = string_width(txt), h = string_height(txt), marg = 2;
			
				xpos = clamp(xpos, camera_get_view_x(view_camera[0]) + w, camera_get_view_x(view_camera[0]) +  camera_get_view_width(view_camera[0]) - w);
				ypos = clamp(ypos, camera_get_view_y(view_camera[0]) + h, camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) - h*2);
			
				draw_set_color(c_white);
				draw_rectangle(xpos-w/2-marg,ypos-marg,xpos+w/2+marg,ypos+h+marg,false);
				draw_set_font_format(fnt_button, fa_center, fa_top, c_black);
				draw_text(xpos, ypos, txt);
			}
			break;
		
	}


}
