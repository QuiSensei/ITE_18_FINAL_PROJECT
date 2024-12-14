function bestiary_page(argument0) {
	instance_destroy(obj_beast_button);
	instance_destroy(obj_achievements_list);
	instance_destroy(cont_bestiary_details);

	if(argument0 == "achievements"){
		instance_destroy(cont_bestiary_details);
		instance_create_layer(0,0,"Bestiary",obj_achievements_list);
	}
	else{
		//show bestiary page
		var list = global.bestiary[? argument0], len = ds_list_size(list);

		var spr = object_get_sprite(obj_beast_button);

		var _x = 64, _y = 288, _w = 800 - _x, _h = 480 - _y, chosen = false;

		for(var i = 0; i < len; i++){
			var beast = list[| i];
			var inst = instance_create_layer(_x + (i * (sprite_get_width(spr)+10))%_w, _y + ((i * (sprite_get_width(spr)+10)) div _w) * (sprite_get_height(spr) + 5), "Bestiary", obj_beast_button);
			if(bestiary_is_catalogued(beast[? "name"])){
				inst.text = beast[? "name"];
				inst.action = bestiary_view;
				inst.arg = [beast[? "name"], argument0];
				inst.image_blend = 0x888888;
			
				if(!chosen){
					bestiary_view(inst.arg);
					chosen = true;
				}
			}
			else{
				inst.text = "???";
				inst.action = bestiary_view;
				inst.arg = [beast[? "name"], argument0];
				inst.image_blend = 0x555555;
				inst.clickable = false;
			}
		}
	}


}
