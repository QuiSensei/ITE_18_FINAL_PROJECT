function bestiary_toggle() {
	global.bestiary_open = !global.bestiary_open;
	if(global.bestiary_open){
		activate_layer_prefix("Bestiary");
		with(inst_bestiary_fish_button) event_user(0);
	}
	else{
		instance_destroy(obj_beast_button);
		instance_destroy(obj_achievements_list);
		instance_destroy(cont_bestiary_details);
		deactivate_layer_prefix("Bestiary");
	}


}
