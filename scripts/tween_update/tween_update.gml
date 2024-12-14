///@function tween_update()
function tween_update() {
	if(!ds_exists(tweens, ds_type_list)) return false;

	var _length = ds_list_size(tweens);
	for(var i = 0; i < _length; i++){
	    var _tween = tweens[| i];
	    _tween[? tween_properties.TIME] = min(_tween[? tween_properties.TIME] + 1, _tween[? tween_properties.DURATION]);
	    script_execute(_tween[? tween_properties.VALUE], lerp(_tween[? tween_properties.START], _tween[? tween_properties.END], script_execute(_tween[? tween_properties.TYPE], _tween[? tween_properties.TIME],_tween[? tween_properties.DURATION])));
	    var _blocking = _tween[? tween_properties.BLOCKING];
	    if( _tween[? tween_properties.TIME] == _tween[? tween_properties.DURATION]){
	        if(ds_map_exists(_tween, tween_properties.ENDACTION)){
	            script_execute(_tween[? tween_properties.ENDACTION]);
	        }
	        ds_map_destroy(_tween);
	        ds_list_delete(tweens, i);
	        i--;
	        _length--;
	    }
	    if(_blocking){
	        break;
	    }
	}


}
