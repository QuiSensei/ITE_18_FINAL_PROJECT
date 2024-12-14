///@function make_bubbles(x,y,hsp,vsp)
///@arg x
///@arg y
///@arg hsp
///@arg vsp
function make_bubbles(argument0, argument1, argument2, argument3) {
	var inst = instance_create_layer(argument0, argument1, "Effects", obj_bubble);
	inst.hsp = argument2;
	inst.vsp = argument3;


}
