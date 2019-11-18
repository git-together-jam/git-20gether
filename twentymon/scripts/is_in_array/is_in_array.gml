/// @func is_in_array(value, array)
/// @arg value
/// @arg array

var _val = argument0;
var _arr = argument1;

var _result = false;

for (var i = 0; i < array_length_1d(_arr); i++) {
	if (_val == _arr[i]) _result = true;	
}

return _result;