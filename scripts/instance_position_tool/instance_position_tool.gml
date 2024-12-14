///function instance_position_tool(object)
///@arg object
function instance_position_tool(argument0) {
	var inst = instance_position(x + target_x, y + target_y, argument0);
	if(!inst){
		var oldmask = mask_index;
		var ang = image_angle;
		mask_index = spr_tool;
		image_index = current_tool;
		image_angle = (arm_xscale > 0 ? target_dir : -target_dir + 180);
		inst = instance_place(x + target_x * abs(arm_xscale), y + target_y, argument0);
	
		image_angle = ang;
		mask_index = oldmask;
		image_index = 0;
	}
	return inst;


}
