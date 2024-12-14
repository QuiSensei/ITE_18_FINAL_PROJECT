///@function tween_create(value, type, duration, start, end, blocking, [endaction])
///@arg value
///@arg type
///@arg duration
///@arg start
///@arg end
///@arg blocking
///@arg [endaction]
function tween_create() {
	var _tween = ds_map_create();
	ds_map_add(_tween, tween_properties.TIME, 0);
	ds_map_add(_tween, tween_properties.VALUE, argument[0]);
	ds_map_add(_tween, tween_properties.TYPE, argument[1]);
	ds_map_add(_tween, tween_properties.DURATION, argument[2]);
	ds_map_add(_tween, tween_properties.START, argument[3]);
	ds_map_add(_tween, tween_properties.END, argument[4]);
	ds_map_add(_tween, tween_properties.BLOCKING, argument[5]);
	if(argument_count > 6)
	    ds_map_add(_tween, tween_properties.ENDACTION, argument[6]);
	return _tween;


}
