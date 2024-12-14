///@function sm_draw(sm)
///@arg sm
function sm_draw(argument0) {
	var sm = argument0;
	if(script_exists(sm[| SM.state])){
		script_execute(sm[| SM.state], sm, SM_EVENT.draw);
	}


}
