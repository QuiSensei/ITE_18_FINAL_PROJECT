///@function instance_position_top(x,y,obj)
function instance_position_top(argument0, argument1, argument2) {
	//arg  x,y         placement of current instance, real
	//@arg obj         object to check for collision (or all), real


	var x1,y1,obj,dsid,this,that,i;
	x1 = argument0;
	y1 = argument1;
	obj = argument2;
	dsid = ds_priority_create();
	this = id;
	with (obj) {
	    that = id;
	    with (this) {
	        i = instance_position(x1,y1,that);
	        if (i != noone) ds_priority_add(dsid,i, i.depth);
	    }
	}

	if(ds_priority_empty(dsid)) return noone;
	var _top = ds_priority_find_min(dsid);
	ds_priority_destroy(dsid);
	return _top;


}
