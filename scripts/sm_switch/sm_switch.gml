///@function sm_switch(sm, state, [argument])
///@arg sm
///@arg state
///@arg [argument]
function sm_switch() {
	var sm = argument[0];
	if(script_exists(sm[| SM.state])){
		script_execute(sm[| SM.state], sm, SM_EVENT.destroy);
	}
	sm[| SM.previous] = sm[| SM.state];
	sm[| SM.state] = argument[1];
	sm[| SM.time] = 0;
	if(argument_count>2)
		sm[| SM.arg] = argument[2];

	if(script_exists(sm[| SM.state])){
		script_execute(sm[| SM.state], sm, SM_EVENT.create);
	}


}
