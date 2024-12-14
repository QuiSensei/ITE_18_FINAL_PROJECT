///@function tweentype_linear(time, duration)
///@arg time
///@arg duration
function tweentype_inv_cubic(argument0, argument1) {
	var _t = 1 - (argument0/argument1);
	return 1 - (_t*_t*_t);


}
