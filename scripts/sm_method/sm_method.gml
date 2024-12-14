///@function sm_method(sm, [argument])
///@arg sm
///@arg [argument]
function sm_method() {
	var sm = argument[0];
	if(script_exists(sm[| SM.state])){
		if(argument_count>1)
			sm[| SM.arg] = argument[1];
		script_execute(sm[| SM.state], sm, SM_EVENT.method);
	}


}
