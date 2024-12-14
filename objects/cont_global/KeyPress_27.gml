switch(room){
	case rm_title:
		game_end();
		break;
	case rm_game:
		if(global.bestiary_open){
			bestiary_toggle();
		}
		else{
			room_goto(rm_title);
		}
		break;
}