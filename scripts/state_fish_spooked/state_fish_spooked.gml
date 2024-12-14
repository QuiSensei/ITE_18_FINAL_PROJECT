function state_fish_spooked(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			var dir = point_direction(obj_player.x,obj_player.y,x,y);
			hsp = lengthdir_x(9,dir);
			vsp = lengthdir_y(9,dir);
			break;
		case SM_EVENT.update:
			image_angle = point_direction(0,0,hsp,vsp);
			if(sm_get_time(sm) > 60){
				sm_switch(sm, sm_get_previous(sm));
			}
			else if(y < global.waterline){
				sm_switch(sm, state_fish_swim);
				if(object_index != obj_penguin)
					achievement_earn("Fly Fishing");
			}
			break;
	}


}
