event_inherited();

preferred_altitude = -150;

facing = choose(-1, 1);
image_xscale = facing;
image_index = 0;
image_speed = 0;
flies = true;
lands = true;
max_spd = irandom_range(3, 6);
sm_switch(sm, state_bird_float);