///@function ds_list_add_map(list, map)
function ds_list_add_map(argument0, argument1) {
	ds_list_add(argument0, argument1);
	ds_list_mark_as_map(argument0, ds_list_size(argument0));


}
