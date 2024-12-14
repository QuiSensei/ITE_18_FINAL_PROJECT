if (instance_number(obj_bgm) > 1) instance_destroy();
persistent = true

enum MUSICMODE {
  off,
  under,
  over,
}

current_musicmode = MUSICMODE.off;
next_musicmode = MUSICMODE.off;

current_volume = 1.0;
next_volume = 1.0;

current_track = undefined;

fade_duration = 1;

cleanup = ds_priority_create();

global.volume = 2;
if(ds_map_exists(global.save, "volume")){
	global.volume = global.save[? "volume"];
}
scr_bgm_volume(global.volume * 0.12);