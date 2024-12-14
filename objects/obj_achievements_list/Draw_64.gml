draw_set_font_format(fnt_button, fa_left, fa_top, c_black);
var achievement_list = global.bestiary[? "achievements"], achievement_len = ds_list_size(achievement_list);
if(ds_map_exists(global.save, "achievements")){
	
	var list = global.save[? "achievements"], len = ds_list_size(list);
	draw_text(80, 80, "Achievements ("+string(len)+"/"+string(achievement_len)+")");
	
	for(var i = 0; i < len; i++){
		var desc = "";
		for(var j = 0; j < achievement_len; j++){
			var achievement = achievement_list[| j];
			if(achievement[? "name"] == list[| i]){
				desc = achievement[? "description"];
				break;
			}
		}
		draw_text(80,110 + i * 30,"- " + list[|i] + " - " + desc);
	}
}
else{
	draw_text(80, 80, "Achievements (0/"+string(achievement_len)+")");
	draw_text(80,110,"No achievements discovered yet!");
}