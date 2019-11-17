/// @func project_direction(direction, distance)
/// @arg direction
/// @arg distance

var _dir = argument0;
var _dist = argument1;

var _dx = 0;
var _dy = 0;

switch(_dir) {
	case Facing.UP:
		_dy = -_dist;
		break;
	case Facing.DOWN:
		_dy = _dist;
		break;
	case Facing.RIGHT:
		_dx = _dist;
		break;
	case Facing.LEFT:
		_dx = -_dist;
		break;
}

var _coords = [];
var _x = (bbox_right + bbox_left) / 2;
var _y = (bbox_bottom + bbox_top) / 2;

_coords[0] = _x + _dx;
_coords[1] = _y + _dy;
return _coords;