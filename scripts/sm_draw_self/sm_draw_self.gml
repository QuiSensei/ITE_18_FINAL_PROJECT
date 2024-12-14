///@function sm_draw_self(sm)
///@arg sm
function sm_draw_self(argument0) {
	var sm = argument0;
	draw_self();
	if(script_exists(sm[| SM.state])){
		script_execute(sm[| SM.state], sm, SM_EVENT.draw);
	}


}
