function state_arm_idle(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
	
		case SM_EVENT.create:
			break;
		
		case SM_EVENT.update:
			if(global.game_click){
				switch(current_tool){
					case TOOLS.glass:
						var creature = instance_position_tool(par_creature);
						if(!creature) creature = instance_nearest(x + target_x, y + target_y, par_creature);
						if(creature && (instance_position_tool(creature) || point_distance(x + target_x, y + target_y, creature.x, creature.y) < examination_small_range + creature.exam_range)){
							examination_target = creature;
							if(!bestiary_is_catalogued(creature.name))
								sm_switch(sm, state_arm_examine);
							else{
								sm_switch(sm, state_arm_describe);
							}
						}
						break;
				
					case TOOLS.claw:
						var creature = instance_position_tool(par_creature);
						if(creature){
							grab_target = creature;
							grab_xoffset = creature.x - (x + target_x);
							grab_yoffset = creature.y - (y + target_y);
							grab_diroffset = creature.image_angle - (arm_xscale > 0 ? target_dir : -target_dir + 180);
							if(creature.grabbable){
								with(grab_target) sm_switch(id.sm, state_creature_grabbed);
								sm_switch(sm, state_arm_grab);
							}
							else{
								if(creature.object_index == obj_sun) achievement_earn("Hot, Hot, Hot");
								sm_switch(sm, state_arm_stuck);
							}
						}
						break;
					
					case  TOOLS.poker:
						var creature = instance_position_tool(par_creature);
						with(creature) event_user(0);
						break;
				}
			}
			break;
		
	}


}
