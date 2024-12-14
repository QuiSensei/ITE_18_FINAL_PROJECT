function state_arm_grab(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		
		case SM_EVENT.update:
			if(mouse_check_button(mb_left) && instance_exists(grab_target)){
				grab_target.x = x + target_x + grab_xoffset;
				grab_target.y = y + target_y + grab_yoffset;
				grab_target.image_angle = (arm_xscale > 0 ? target_dir : -target_dir + 180) + grab_diroffset;
			}
			else{
				if(instance_exists(grab_target)){
					grab_target.x = x + target_x + grab_xoffset;
					grab_target.y = y + target_y + grab_yoffset;
					grab_target.image_angle = (arm_xscale > 0 ? target_dir : -target_dir + 180) + grab_diroffset;
					grab_target.hsp = grab_target.x - grab_target.xprevious;
					grab_target.vsp = grab_target.y - grab_target.yprevious;
				
					var current_spd = point_distance(0,0,grab_target.hsp,grab_target.vsp);
					if(current_spd > 20){
						var dir = point_direction(0,0,grab_target.hsp,grab_target.vsp);
						grab_target.hsp = lengthdir_x(20, dir);
						grab_target.vsp = lengthdir_y(20, dir);
					}
					with(grab_target) sm_switch(id.sm, sm_get_previous(id.sm));
				}
				sm_switch(sm, state_arm_idle);
			}
			break;
		
	}


}
