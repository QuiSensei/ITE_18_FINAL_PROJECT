function tweentype_out_back_cubic(argument0, argument1) {
	var _t, _ts, _tc;
	_t = argument0/argument1;
	_ts = _t*_t;
	_tc = _ts*_t;
	return 2*_tc - 5*_ts + 4*_t;


}
