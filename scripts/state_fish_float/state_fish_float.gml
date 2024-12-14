function state_fish_float(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			bounce_cutoff = preferred_depth + irandom_range(-80,80) + 40;
			break;
		case SM_EVENT.update:
			image_angle += angle_difference(0, image_angle)/10;
			hsp *= 0.98;
			vsp = min(vsp + 0.1, 1);
			if(sm_get_time(sm) > 30 && y >= bounce_cutoff){
				vsp = -4;
				hsp = choose(-1,1);
				sm[| SM.time] = 0;
			}
			break;
	}


}
