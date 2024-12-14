///@function create_notification(target, text)
///@arg target
///@arg text
function create_notification(argument0, argument1) {
	var inst = instance_create_layer(argument0.x, argument0.bbox_top, "Notifications", obj_notification);
	inst.target = argument0;
	inst.text = argument1;
	with(inst){
		tween_add(tween_create(tween_pointer_anchor, tweentype_inv_cubic, 120, 0, 100, false, destroy_self));
	}


}
