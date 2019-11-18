/// @func tile_free(x, y, ?dir)
/// @arg x
/// @arg y
/// @arg ?dir

var _x = argument[0];
var _y = argument[1];
var _dir = noone;
var _oneDir = noone;
if(argument_count == 3) {
	_dir = argument[2];
}

if(_dir == Facing.UP) {
	_oneDir = Tile_Col.ONE_UP;
} else if(_dir == Facing.DOWN) {
	_oneDir = Tile_Col.ONE_DOWN;
} else if(_dir == Facing.RIGHT) {
	_oneDir = Tile_Col.ONE_RIGHT;
} else if(_dir == Facing.LEFT) {
	_oneDir = Tile_Col.ONE_LEFT;
}


var _yGrid = _y - TILE_SIZE;
var _tile = tile_col_get_mask(_x, _yGrid);

return (_tile == Tile_Col.AIR || _tile == _oneDir) && !place_meeting(_x, _y, obj_obstacle);
