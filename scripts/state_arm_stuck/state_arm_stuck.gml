function state_arm_stuck(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		
		case SM_EVENT.update:
			if(mouse_check_button(mb_left) && instance_exists(grab_target)){
			
				var hook_x = grab_target.x - grab_xoffset;
				var hook_y = grab_target.y - grab_yoffset;
				var dist = point_distance(x,y,hook_x, hook_y);
				if(dist > range){
					var dir = point_direction(x,y,hook_x, hook_y);
					dist = range;
					x = (hook_x) - lengthdir_x(dist, dir);
					y = (hook_y) - lengthdir_y(dist, dir);
				}
			
				target_x = grab_target.x - (x + grab_xoffset);
				target_y = grab_target.y - (y + grab_yoffset);
				target_dist = dist;
				target_dir = point_direction(0,0,abs(target_x),target_y);
				arm_xscale = target_x >= 0 ? 1 : -1;
			}
			else{
				sm_switch(sm, state_arm_idle);
			}
			break;
	}


}
