function state_bird_float(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			image_index = 0;
			if(y > global.waterline + 5){
				sm_switch(sm, state_bird_rise);
				return;
			}
			else if(y < global.waterline - 5){
				if(flies)
					sm_switch(sm, choose(state_bird_fly, state_bird_fall));
				else{
					sm_switch(sm, state_bird_fall);
				}
				return;
			}
			else{
				y = global.waterline;
			}
			vsp = 0;
			break;
		
		case SM_EVENT.update:
			image_angle += angle_difference(0, image_angle)/6;
			if(sm_get_time(sm)%15==14 && irandom(10)==0){
				facing *= -1;
			}
			hsp = facing * 1;
			if(y > global.waterline){
				sm_switch(sm, state_bird_rise);
				return;
			}
			else if(flies && sm_get_time(sm)%60==59 && irandom(3)==0){
				sm_switch(sm, state_bird_fly);
			}
			break;
	}


}
