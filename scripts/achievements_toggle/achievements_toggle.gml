function achievements_toggle() {
	global.achievements_open = !global.achievements_open;
	if(global.achievements_open){
		with(inst_bestiary_fish_button) event_user(0);
	}
	else{
		deactivate_layer_prefix("Achievements");
	}


}
