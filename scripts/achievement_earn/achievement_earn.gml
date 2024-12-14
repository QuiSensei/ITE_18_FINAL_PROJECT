///@function achievement_earn(name)
///@arg name
function achievement_earn(argument0) {
	if(!achievement_is_earned(argument0)){
		if(!ds_map_exists(global.save, "achievements")){
			ds_map_add_list(global.save, "achievements", ds_list_create());
		}

		ds_list_add(global.save[? "achievements"], argument0);
	
		ds_list_add(global.earned_achievements, "Achievement Unlocked: "+argument0);
	}


}
