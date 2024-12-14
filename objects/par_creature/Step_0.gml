sm_update(sm);
x += hsp;
y += vsp;

var spr_w = abs(sprite_width);
if(x < -spr_w){
	x = room_width + spr_w;
}
if(x > room_width + spr_w){
	x = -spr_w;
}
if(y < 0){
	y = 0;
	vsp *= -1;
}
if(y > room_height){
	y = room_height;
	vsp *= -1;
}