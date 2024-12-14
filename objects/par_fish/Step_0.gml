event_inherited();
var ang = ((image_angle%360)+360)%360;
image_yscale = yscale * ((ang > 90 && ang < 270) ? -1 : 1);