function state_fish_swim_steady(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case SM_EVENT.create:
			heading = 0;
			break;
		
		case SM_EVENT.update:
			//in the water
			if(y >= global.waterline){
				var current_spd = point_distance(0,0,hsp,vsp);
				if(current_spd>max_spd*1.5){
					current_spd = max(current_spd - accel, 0);
					var dir = point_direction(0,0,hsp,vsp);
					hsp = lengthdir_x(current_spd, dir);
					vsp = lengthdir_y(current_spd, dir);
				}
				else{
					if(abs(y - preferred_depth) > depth_tolerance){
						vsp -= accel * sign(y - preferred_depth);
					}
					else{
						if(sm_get_time(sm) % 30 == 0){
							heading = 0;
							make_bubbles(x,y,-hsp,-vsp);
						}
						var dir = image_angle + heading;
						hsp += lengthdir_x(accel, dir);
						vsp += lengthdir_y(accel, dir);

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
					}
				}
			}
			//out of the water
			else{
				vsp = min(vsp + 0.3, maxFallSpd);
				hsp *= 0.99;
			}
			break;
	}


}
