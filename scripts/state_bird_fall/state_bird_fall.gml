function state_bird_fall(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			image_index = 0;
			break;
		case SM_EVENT.update:
			vsp = min(vsp + 0.2, 5);
			if(y >= global.waterline){
				y = global.waterline;
				sm_switch(sm, state_bird_float);
			}
			break;
	}


}
