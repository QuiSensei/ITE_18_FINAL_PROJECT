function save_data() {
	var buff = buffer_create(1, buffer_grow, 1);
	buffer_write(buff, buffer_text, json_encode(global.save));
	buffer_save(buff, global.save_filename);
	buffer_delete(buff);


}
