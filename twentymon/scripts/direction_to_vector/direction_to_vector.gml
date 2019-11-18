/// @func direction_to_vector(direction, size)
/// @arg direction
/// @arg size

var _dir = argument0;
var _size = argument1;

var _dx = 0;
var _dy = 0;
switch(_dir) {
	case Facing.UP:
		_dy = -1;
		break;
	case Facing.DOWN:
		_dy = 1;
		break;
	case Facing.RIGHT:
		_dx = 1;
		break;
	case Facing.LEFT:
		_dx = -1;
		break;
}


var _vec = [_dx * _size, _dy * _size];
return _vec;