function load_data() {
	if(file_exists(global.save_filename)){
		var buff = buffer_load(global.save_filename);
		var json = buffer_read(buff, buffer_text);
		buffer_delete(buff);
		return json_decode(json);
	}
	else{
		return ds_map_create();
	}


}
