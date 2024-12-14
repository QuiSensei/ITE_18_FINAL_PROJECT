function activate_layer_prefix(argument0) {
	var layers = layer_get_all(), len = array_length_1d(layers);
	for(var i = 0; i < len; i++){
		var current_layer = layers[i];
		if(string_pos(argument0, layer_get_name(current_layer))==1){
			instance_activate_layer(layers[i]);
			layer_set_visible(layers[i], true);
		}
	}


}
