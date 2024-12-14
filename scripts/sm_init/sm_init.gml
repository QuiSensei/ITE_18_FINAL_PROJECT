///@function sm_init([state])
///@arg [state]
function sm_init() {
	var sm = ds_list_create();
	sm[| SM.state] = argument_count>0?argument[0]:-1;
	sm[| SM.previous] = -1;
	sm[| SM.time] = 0;
	sm[| SM.arg] = undefined;
	return sm;

	enum SM {
		state,
		previous,
		time,
		arg
	}

	enum SM_EVENT {
		create,
		update,
		end_update,
		draw,
		end_draw,
		method,
		destroy
	}


}
