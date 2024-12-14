time++;

//create new shapes
if(time >= wait_time && ds_list_size(shapes) < 400){
	var shape = ds_map_create();
	shape[? "radius"] = irandom_range(32, 256);
	shape[? "x"] = irandom(room_width);
	shape[? "y"] = room_height + shape[? "radius"];
	shape[? "color"] = make_color_hsv(irandom_range(100,170),irandom_range(155,255),255);
	shape[? "alpha"] = 1;
	ds_list_add_map(shapes, shape);
	
	time = 0;
	wait_time = irandom_range(20, 60);
}

//update shape positions
for(var i = 0; i < ds_list_size(shapes); i++){
	var shape = shapes[| i];
	shape[? "y"] -= max((256 - shape[? "radius"])/40, 1);
	shape[? "alpha"] = min(1, (shape[? "y"] - (global.waterline + shape[? "radius"]))/shape[? "radius"]);
	if(shape[? "y"] < global.waterline + shape[? "radius"]){
		ds_map_destroy(shape);
		ds_list_delete(shapes, i);
		i--;
	}
}