shapes = ds_list_create();
time = 0;
wait_time = 0;

global.shape_surf = -1;

repeat(1000) event_perform(ev_step, 0);