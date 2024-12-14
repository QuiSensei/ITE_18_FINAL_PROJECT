if(bottle_scale > 0)
	draw_sprite_ext(spr_bottle,0,x,y,image_xscale * bottle_scale,image_yscale * bottle_scale,image_angle,image_blend,image_alpha);

if(balloon_scale > 0)
	draw_sprite_ext(spr_balloon,0,x,y,image_xscale * balloon_scale,image_yscale * balloon_scale,image_angle,image_blend,image_alpha);

draw_set_color(c_black);
if(target_dist > 0){
	var arm_one_angle = darccos(( side_length*side_length + target_dist*target_dist - side_length*side_length) / (2 * side_length * target_dist) );
	var arm_two_angle = darccos(( side_length*side_length + side_length*side_length - target_dist*target_dist) / (2 * side_length * side_length) );
	//inv_kin_angle_one = darccos(( b*b + c*c - a*a) / (2 * b * c) );
	//inv_kin_angle_two = darccos(( a*a + b*b - c*c) / (2 * a * b) );
	
	var point_one_x = lengthdir_x(side_length, target_dir + arm_one_angle);
	var point_one_y = lengthdir_y(side_length, target_dir + arm_one_angle);
	var point_two_x = point_one_x + lengthdir_x(side_length, target_dir + arm_one_angle + arm_two_angle + 180);
	var point_two_y = point_one_y + lengthdir_y(side_length, target_dir + arm_one_angle + arm_two_angle + 180);
	
	var dir1 = point_direction(x, y, x + point_one_x * arm_xscale, y + point_one_y);
	var dir2 = point_direction(x + point_one_x * arm_xscale, y + point_one_y, x + point_two_x * arm_xscale, y + point_two_y);
	draw_sprite_ext(spr_arm, 0, x, y, 1, 1, dir1, c_white, 1);
	draw_sprite_ext(spr_arm, 1, x + point_one_x * arm_xscale, y + point_one_y, 1, 1, dir2, c_white, 1);
	//draw_line(x, y, x + point_one_x * arm_xscale, y + point_one_y);
	//draw_line(x + point_one_x * arm_xscale, y + point_one_y, x + point_two_x * arm_xscale, y + point_two_y);
	
	draw_sprite_ext(spr_tool, current_tool, x + target_x * abs(arm_xscale), y + target_y, 1, arm_xscale, (arm_xscale > 0 ? target_dir : -target_dir + 180), c_white, 1);
}
draw_self();
sm_draw(arm_sm);