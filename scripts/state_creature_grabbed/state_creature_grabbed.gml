function state_creature_grabbed(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			hsp = 0;
			vsp = 0;
			break;
		
		case SM_EVENT.method:
			sm_switch(sm, sm[| SM.previous]);
			break;
	}


}
