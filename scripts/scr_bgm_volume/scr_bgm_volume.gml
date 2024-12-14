/// @desc Sets bgm volume
/// @arg volume BGM volume (0 to 1)
function scr_bgm_volume(argument0) {

	var volume = argument0

	with (obj_bgm) {
		next_volume = volume;	
	}


}
