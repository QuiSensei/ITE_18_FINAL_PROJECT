var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

if(!surface_exists(global.shape_surf)){
	global.shape_surf = surface_create(cam_w, cam_h);
}
surface_set_target(global.shape_surf);

var col = layer_background_get_blend(layer_background_get_id(layer_get_id("Background")));
draw_clear_alpha(col, 1);

var len = ds_list_size(shapes), precision = 32, thickness = 40;
for(var i = 0; i < len; i++){
	var shape = shapes[| i], _x = shape[? "x"] - cam_x, _y = shape[? "y"] - cam_y;
	if(!point_in_rectangle(shape[? "x"], shape[? "y"], cam_x - shape[? "radius"], cam_y - shape[? "radius"], cam_x + cam_w + shape[? "radius"], cam_y + cam_h + shape[? "radius"])) continue;
	draw_set_color(shape[? "color"]);
	draw_set_alpha(0.3 * shape[? "alpha"]);
	draw_circle(_x, _y, shape[? "radius"], false);
	draw_set_alpha(1);
	
	draw_primitive_begin(pr_trianglestrip);
	for(var j = 0; j <= precision; j++){
		draw_vertex_color(
			_x + lengthdir_x(shape[? "radius"] + thickness/2, j * 360/precision),
			_y + lengthdir_y(shape[? "radius"] + thickness/2, j * 360/precision),
			shape[? "color"], 0);
		draw_vertex_color(
			_x + lengthdir_x(shape[? "radius"], j * 360/precision),
			_y + lengthdir_y(shape[? "radius"], j * 360/precision),
			shape[? "color"], shape[? "alpha"]);
	}
	draw_primitive_end();
	
	draw_primitive_begin(pr_trianglestrip);
	for(var j = 0; j <= precision; j++){
		draw_vertex_color(
			_x + lengthdir_x(shape[? "radius"], j * 360/precision),
			_y + lengthdir_y(shape[? "radius"], j * 360/precision),
			shape[? "color"], shape[? "alpha"]);
		draw_vertex_color(
			_x + lengthdir_x(shape[? "radius"] - thickness/2, j * 360/precision),
			_y + lengthdir_y(shape[? "radius"] - thickness/2, j * 360/precision),
			shape[? "color"], 0);
	}
	draw_primitive_end();
	
}
surface_reset_target();

shader_set(sh_waterblur);
	shader_set_uniform_f(shader_get_uniform(sh_waterblur, "time"), current_time/1000);
	var tex = surface_get_texture(global.shape_surf);
	shader_set_uniform_f(shader_get_uniform(sh_waterblur, "tex"), texture_get_texel_width(tex), texture_get_texel_height(tex));
	draw_surface(global.shape_surf, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
shader_reset();