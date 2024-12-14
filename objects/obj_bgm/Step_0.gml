

if (current_musicmode != next_musicmode) {
	show_debug_message("BGM: changing music mode to " + string(next_musicmode))
	var current_position = 0; // to be filled later

	// current track is playing? stop it
	if (!is_undefined(current_track)) {
		show_debug_message("BGM: fading out current track")
		switch(current_musicmode) {
			default:
			case MUSICMODE.off:
				break;

			case MUSICMODE.under:
			case MUSICMODE.over:
				current_position = audio_sound_get_track_position(current_track);
				show_debug_message("BGM: got current position " + string(current_position))
				audio_sound_gain(current_track, 0, fade_duration * 1000);
				show_debug_message("BGM: set fadeout complete to current: " + string(current_time) + " plus " + string(fade_duration*1000))
				ds_priority_add(cleanup, current_track, current_time+fade_duration*1000);
				break;
		}
	}

	// next track requested? play it
	switch (next_musicmode) {
		default:
		case MUSICMODE.off:
			current_track = undefined;
			break;

		case MUSICMODE.under:
			audio_sound_set_track_position(snd_bgm_under, current_position)
			current_track = audio_play_sound(snd_bgm_under, 0, true);
			audio_sound_gain(current_track, 0, 0);
			audio_sound_gain(current_track, current_volume, fade_duration * 1000);
			break;

		case MUSICMODE.over:
			audio_sound_set_track_position(snd_bgm_over, current_position)
			current_track = audio_play_sound(snd_bgm_over, 0, true);
			audio_sound_gain(current_track, 0, 0);
			audio_sound_gain(current_track, current_volume, fade_duration * 1000);
			break;
	}

	current_musicmode = next_musicmode;
}
else if (next_volume != current_volume and !is_undefined(current_track)) {
	audio_sound_gain(current_track, next_volume, fade_duration * 1000);
	current_volume = next_volume;
}

// handle cleaning up ended tracks
if (not ds_priority_empty(cleanup)) {
	var min_time = ds_priority_find_priority(cleanup, ds_priority_find_min(cleanup))
	if (min_time < current_time) {
		show_debug_message("BGM: cleaned up faded out track");
		audio_stop_sound(ds_priority_delete_min(cleanup));
	}
}