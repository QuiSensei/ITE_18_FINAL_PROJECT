switch(room){
	case rm_menu:
		global.waterline = 0;
		scr_bgm_mode(MUSICMODE.under);
		break;
	case rm_game:
		global.waterline = 1080;
		
		global.bestiary_open = false;
		global.achievements_open = false;
		deactivate_layer_prefix("Bestiary");
		deactivate_layer_prefix("Achievements");
		
		if(!achievement_is_earned("Gotta Scan Them All")){
			create_global_notice("Your Mission:\nScan every species!");
		}
		break;
}