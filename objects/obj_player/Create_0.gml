//base stats
accel = 0.5;
max_spd = 6;
decel = 0.2;
hsp = 0;
vsp = 0;
sm = sm_init();
sm_switch(sm, state_player_sea);

//arm variables
side_length = 100;
range = side_length * 2;
target_x = 0;
target_y = 0;
target_dist = 0;
target_dir = 0;
arm_xscale = 1;
arm_sm = sm_init(state_arm_idle);
current_tool = TOOLS.glass;
enum TOOLS {
	glass,
	claw,
	poker
}

//controls
key_right = ord("D");
key_left = ord("A");
key_up = ord("W");
key_down = ord("S");

//Examination
examination_small_range = 48;
examination_large_range = 64;
examination_target = noone;
examination_progress = 0;

//Grab
grab_target = noone;
grab_xoffset = 0;
grab_yoffset = 0;
grab_diroffset = 0;

bottle_scale = 0;
balloon_scale = 0;

camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - camera_get_view_height(view_camera[0])/2);