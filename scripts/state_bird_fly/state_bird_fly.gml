function state_bird_fly(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			image_index = 1;
			break;
		case SM_EVENT.update:
			if(abs(y - (global.waterline + preferred_altitude))>50){
				vsp = clamp(vsp - sign(y - (global.waterline + preferred_altitude)) * 0.2, -5, 5);
			}
			else{
				vsp = median(vsp - sign(vsp) * 0.2, vsp, 0);
			}
			
			image_angle += angle_difference(0, image_angle)/6;
			hsp = clamp(hsp + facing * 0.2, -max_spd, max_spd);
		
			if(lands && sm_get_time(sm)%60==59 && irandom(6)==0){
				sm_switch(sm, state_bird_fall);
			}
			break;
	}


}
