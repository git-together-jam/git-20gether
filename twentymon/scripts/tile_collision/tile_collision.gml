/// @func tile_collision(x, y, free_tiles)
/// @arg x
/// @arg y
/// @arg free_tiles

var xx = argument0;
var yy = argument1;
var _free_tiles = argument2;

var _collision = false;

// Check for all sub-tiles in the current tile
for (var _x = 0; _x < TILE_SIZE / TILE_MOVE_SIZE; _x++) {
	for (var _y = 0; _y < TILE_SIZE / TILE_MOVE_SIZE; _y++) {
		var _tile = tile_col_get_mask(xx + _x * TILE_MOVE_SIZE, yy + _y * TILE_MOVE_SIZE);
		if (!is_in_array(_tile, _free_tiles)) _collision = true;
	}
}

return _collision;