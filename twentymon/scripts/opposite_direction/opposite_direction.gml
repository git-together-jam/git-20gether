/// @func opposite_direction(direction)
/// @arg direction

var _dir = argument0;
if(_dir == Facing.UP) {
	return Facing.DOWN;
} else if(_dir == Facing.DOWN) {
	return Facing.UP;
} else if(_dir == Facing.LEFT) {
	return Facing.RIGHT;
} else if(_dir == Facing.RIGHT) {
	return Facing.LEFT;
}