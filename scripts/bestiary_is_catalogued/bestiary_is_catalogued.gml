///@function bestiary_is_catalogued(name)
///@arg name
function bestiary_is_catalogued(argument0) {
	if(!ds_map_exists(global.save, "bestiary")){
		return false;
	}

	return ds_list_find_index(global.save[? "bestiary"], argument0) != -1;


}
