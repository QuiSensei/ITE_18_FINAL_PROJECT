function tween_add(argument0) {
	ds_list_add(tweens, argument0);
	ds_list_mark_as_map(tweens, ds_list_size(tweens)-1);


}
