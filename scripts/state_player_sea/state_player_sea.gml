function state_player_sea(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			scr_bgm_mode(MUSICMODE.under);
			break;
		case SM_EVENT.update:
			balloon_scale = max(balloon_scale - 0.02, 0);
		
			if(y - global.waterline > 100){
				bottle_scale = clamp(bottle_scale + 0.02, 0.2, 1);
			}
			else{
				bottle_scale = max(bottle_scale - 0.02, 0);
			}
			var hmove = keyboard_check(key_right) - keyboard_check(key_left);
			var vmove = keyboard_check(key_down) - keyboard_check(key_up);

			var current_spd = point_distance(0,0,hsp,vsp);
			var dir = point_direction(0, 0, hsp, vsp);

			if((hmove == 0 && vmove == 0) || current_spd > max_spd){
				current_spd = max(current_spd - decel, 0);
				hsp = lengthdir_x(current_spd, dir);
				vsp = lengthdir_y(current_spd, dir);
			}

			hsp += accel * hmove;
			vsp += accel * vmove;

			dir = point_direction(0, 0, hsp, vsp);

			var new_spd;
			if(current_spd <= max_spd){
				new_spd = min(point_distance(0, 0, hsp, vsp), max_spd);
			}
			else{
				new_spd = min(point_distance(0, 0, hsp, vsp), current_spd);
			}

			hsp = lengthdir_x(new_spd, dir);
			vsp = lengthdir_y(new_spd, dir);
		
			if(sm_get_time(sm)%30==0 && new_spd > 3){
				make_bubbles(x+irandom_range(-10,10),y+irandom_range(-10,10),0,-2);
			}
		
			if(y < global.waterline){
				sm_switch(sm, state_player_air);
			}
			break;
	}


}
