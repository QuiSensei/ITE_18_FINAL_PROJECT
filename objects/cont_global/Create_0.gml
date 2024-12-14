if(instance_number(object_index) > 1) { instance_destroy(); exit; }

display_set_gui_size(960,540);

global.game_click = false;

window_set_cursor(cr_none);

global.earned_achievements = ds_list_create();