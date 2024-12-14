function state_bird_rise(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			image_index = 1;
			vsp = max(vsp, 5);
			break;
		case SM_EVENT.update:
			vsp = max(vsp - 0.2, -5);
			if(y <= global.waterline){
				sm_switch(sm, state_bird_float);
				return;
			}
			break;
	}


}
