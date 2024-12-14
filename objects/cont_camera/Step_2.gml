if(instance_exists(target)){
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	var cam_w = camera_get_view_width(view_camera[0]);
	var cam_h = camera_get_view_height(view_camera[0]);
	
	camera_set_view_pos(
		view_camera[0],
		clamp(lerp(cam_x, target.x - cam_w/2, 0.2), 0, room_width-cam_w),
		clamp(lerp(cam_y, target.y - cam_h/2, 0.2), 0, room_height-cam_h),
	);
	
	layer_background_blend(bg, merge_color(bg_blend, c_black, clamp((target.y - global.waterline)/(room_height - global.waterline), 0, 1)));
}