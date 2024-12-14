///@function sm_update(sm)
///@arg sm
function sm_end_update(argument0) {
	var sm = argument0;
	sm[| SM.time]+=1;
	if(script_exists(sm[| SM.state])){
		script_execute(sm[| SM.state], sm, SM_EVENT.end_update);
	}


}
