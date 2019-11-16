/// @func mouse_hover_object(obj, [gui])
/// @arg obj
/// @arg [gui]

var _obj = argument[0];
var _xx = mouse_x, _yy = mouse_y;

if (argument_count > 1) {
	if (argument[1]) {
		_xx = mouse_x;
		_yy = mouse_y;
	}
}

return (position_meeting(_xx, _yy, _obj));