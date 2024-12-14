function tweentype_cubic1(argument0, argument1) {
	var _t,_d,_c;
	_t = argument0;
	_d = argument1;
	_c = _t/(_d/2);
	if(_c<1)
	    return _c*_c*0.5;
	_c--;
	return -0.5 * (_c*(_c-2) - 1);


}
