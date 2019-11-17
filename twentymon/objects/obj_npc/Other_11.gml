/// @description Wander to a new tile
var _sign = round(random(1)) * 2 - 1;
var _to_begin = false;
if(distance_to_point(xstart, ystart) > TILE_SIZE * 3) {
	_to_begin = true;
}
if(random(1) > 0.5) {
	// x
	if(_to_begin) {
		_sign = sign(xstart - x);
	}
	if(_sign > 0) {
		dir = Facing.RIGHT;
	} else {
		dir = Facing.LEFT;
	}
	var _tile = tile_col_get_mask(x + TILE_SIZE * _sign, y - TILE_SIZE);
	if (_tile != Tile_Col.AIR  || place_meeting(x + TILE_SIZE * _sign, y, obj_obstacle)) {
		event_user(1);
		exit;
	}
	target_x += TILE_SIZE * _sign;
	target_y = y;
} else {
	if(_to_begin) {
		_sign = sign(ystart - y);
	}
	if(_sign > 0) {
		dir = Facing.DOWN;
	} else {
		dir = Facing.UP;
	}
	var _tile = tile_col_get_mask(x, y - TILE_SIZE + TILE_SIZE * _sign);
	if (_tile != Tile_Col.AIR || place_meeting(x , y + TILE_SIZE * _sign, obj_obstacle)) {
		event_user(1);
		exit;
	}
	target_y += TILE_SIZE * _sign;
	target_x = x;
}