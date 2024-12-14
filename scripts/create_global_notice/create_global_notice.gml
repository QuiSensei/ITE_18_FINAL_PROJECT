///@function create_notification(text)
///@arg text
function create_global_notice(argument0) {
	var inst = instance_create_layer(display_get_gui_width()/2, -20, "Notifications", obj_global_notification);
	inst.text = argument0;
	inst.loc = false;
	with(inst){
		tween_add(tween_create(tween_pointer_y, tweentype_inv_cubic, 120, -20, 100, true));
		tween_add(tween_create(tween_pointer_y, tweentype_cubic, 120, 100, -20, true, destroy_self));
	}


}
