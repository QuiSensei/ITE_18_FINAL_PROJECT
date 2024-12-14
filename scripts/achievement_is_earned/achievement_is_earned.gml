///@function achievement_is_earned(name)
///@arg name
function achievement_is_earned(argument0) {
	if(!ds_map_exists(global.save, "achievements")){
		return false;
	}

	return ds_list_find_index(global.save[? "achievements"], argument0) != -1;


}
