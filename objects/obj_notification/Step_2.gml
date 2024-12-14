if(loc){
	if(instance_exists(target)){
		x = target.x;
		y = target.bbox_top - anchor;
		
		x = clamp(x, camera_get_view_x(view_camera[0]) + string_width(text), camera_get_view_x(view_camera[0]) +  camera_get_view_width(view_camera[0]) - string_width(text));
		y = clamp(y, camera_get_view_y(view_camera[0]) + string_height(text), camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) - string_height(text));
	}
	else{
		instance_destroy();
	}
}