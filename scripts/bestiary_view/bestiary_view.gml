function bestiary_view(argument0) {
	var args = argument0, name = args[0], type = args[1];

	instance_destroy(cont_bestiary_details);

	var inst = instance_create_layer(0,0,"Bestiary",cont_bestiary_details);
	inst.name = name;

	var list = global.bestiary[? type], len = ds_list_size(list);
	for(var i = 0; i < len; i++){
		var item = list[| i];
		if(item[? "name"] == name) break;
	}
	if(i == len) exit;

	inst.name = ds_map_find_value(item, "name");
	inst.description = ds_map_find_value(item, "description");
	inst.sprite_index = asset_get_index(ds_map_find_value(item, "sprite"));


}
