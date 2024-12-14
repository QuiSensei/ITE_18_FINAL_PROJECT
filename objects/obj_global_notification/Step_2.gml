if(loc){
	if(instance_exists(target)){
		x = target.x;
		y = target.bbox_top - anchor;
	}
	else{
		instance_destroy();
	}
}