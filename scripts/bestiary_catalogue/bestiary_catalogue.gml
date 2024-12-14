///@function bestiary_catalogue(name)
///@arg name
function bestiary_catalogue(argument0) {
	if(!bestiary_is_catalogued(argument0)){
		if(!ds_map_exists(global.save, "bestiary")){
			ds_map_add_list(global.save, "bestiary", ds_list_create());
		}

		ds_list_add(global.save[? "bestiary"], argument0);
	
		if(ds_list_size(global.save[? "bestiary"]) == ds_list_size(global.bestiary[? "fish"])+ds_list_size(global.bestiary[? "birds"])){
			//got them all!
			achievement_earn("Gotta Scan Them All");
		}
	}


}
