/// @desc Sets bgm mode
/// @arg mode BGM mode (enum member)
function scr_bgm_mode(argument0) {

	var mode = argument0

	with (obj_bgm) {
		next_musicmode = mode;	
	}


}
