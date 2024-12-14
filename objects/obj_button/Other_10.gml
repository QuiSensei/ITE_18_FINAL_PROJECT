if(clickable){
	if(is_undefined(arg)){
		script_execute(action);
	}
	else{
		script_execute(action, arg);
	}
}