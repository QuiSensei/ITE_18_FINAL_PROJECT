sm_update(sm);

#region movement
x += hsp;
y += vsp;

image_angle = hsp*2;
if(sign(hsp)!=0)
	image_xscale = sign(hsp);

if(x < 0){
	x = 0;
	hsp *= -1;
}
if(x > room_width){
	x = room_width;
	hsp *= -1;
}
if(y < 0){
	y = 0;
	vsp *= -1;
}
if(y > room_height){
	y = room_height;
	vsp *= -1;
}
#endregion

#region tool
var toolchange = keyboard_check_pressed(ord("E")) - keyboard_check_pressed(ord("Q"));
current_tool = mod2(current_tool + toolchange, 3);

if(keyboard_check_pressed(ord("1"))) current_tool = 0;
if(keyboard_check_pressed(ord("2"))) current_tool = 1;
if(keyboard_check_pressed(ord("3"))) current_tool = 2;

//get mouse target position
target_x = lerp(target_x, mouse_x - x, 0.2);
target_y = lerp(target_y, mouse_y - y, 0.2);
var dir = point_direction(0,0,target_x,target_y);
var dist = clamp(point_distance(0,0,target_x,target_y),64,range);
target_x = lengthdir_x(dist, dir);
target_y = lengthdir_y(dist, dir);

target_dist = dist;
target_dir = point_direction(0,0,abs(target_x),target_y);

arm_xscale = target_x >= 0 ? 1 : -1;//lerp(arm_xscale, target_x >= 0 ? 1 : -1, clamp(point_distance(x,y,mouse_x,mouse_y,)/256, 0.1, 1));
#endregion

sm_update(arm_sm);