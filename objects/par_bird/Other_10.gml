switch(sm_get_state(sm)){
	case state_bird_fly:
		sm_switch(sm, state_bird_fall);
		break;
	default:
		sm_switch(sm, state_bird_fly);
		break;
}