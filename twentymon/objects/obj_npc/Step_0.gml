/// @description Player Movement


#region // Move the Character
var _dirUp = dir == Facing.UP;
var _dirDown = dir == Facing.DOWN;
var _dirLeft = dir == Facing.LEFT;
var _dirRight = dir == Facing.RIGHT;
var _mvspd = TILE_MOVE_SPD;

if (target_x > x) { x += _mvspd;} // Right
if (target_x < x) { x -= _mvspd;} // Left
if (target_y > y) { y += _mvspd;} // Down
if (target_y < y) { y -= _mvspd;} // Up


// Stops character at position when reach goal
if (target_x == x && target_y == y) {
	moving = false;
}

#endregion 

// Used to correct characters position & move properly, because bottom center on sprites is necessary.
var _moveLeft = TILE_SIZE;
var _moveRight = TILE_SIZE;
var _moveUp = TILE_SIZE;
var _moveDown = TILE_SIZE;
var _yGrid = y - TILE_SIZE;


#region // Moving

/*// LEFT
if (_dirLeft && !moving) {
	
	var _tile = tile_col_get_mask(x - _moveLeft, _yGrid);
	if (_tile == Tile_Col.AIR or _tile == Tile_Col.ONE_LEFT)  {
		target_x -= TILE_SIZE;
		moving = true;
	} else {
		dir = opposite_direction(dir);
	}
}

// RIGHT
else if (_dirRight && !moving) {
	
	var _tile = tile_col_get_mask(x + _moveRight,_yGrid);
	if (_tile == Tile_Col.AIR || _tile == Tile_Col.ONE_RIGHT)   {
		target_x += TILE_SIZE;
		moving = true;
	} else {
		dir = opposite_direction(dir);
	}
}

// UP
else if (_dirUp && !moving) {
	
	var _tile = tile_col_get_mask(x, _yGrid - _moveUp)
	if (_tile == Tile_Col.AIR || _tile == Tile_Col.ONE_UP)  {
		target_y -= TILE_SIZE;
		moving = true;
	} else {
		dir = opposite_direction(dir);
	}
}

// DOWN
else if (_dirDown && !moving) {

	var _tile = tile_col_get_mask(x, _yGrid + _moveDown);
	if (_tile == Tile_Col.AIR || _tile == Tile_Col.ONE_DOWN)  {
		target_y += TILE_SIZE;
		moving = true;
	} else {
		dir = opposite_direction(dir);
	}
}*/
if(!moving) {
	var _dx = 0;
	var _dy = 0;
	var _oneWayTile;
	if(_dirLeft) {
		_dx = -_moveLeft;
		_oneWayTile = Tile_Col.ONE_LEFT;
	}
	if(_dirRight) {
		_dx = _moveRight;
		_oneWayTile = Tile_Col.ONE_RIGHT;
	}
	if(_dirUp) {
		_dy = -_moveUp;
		_oneWayTile = Tile_Col.ONE_UP;
	}
	if(_dirDown) {
		_dy = _moveDown;
		_oneWayTile = Tile_Col.ONE_DOWN;
	}
	var _tile = tile_col_get_mask(x + _dx, _yGrid + _dy);
	if ((_tile == Tile_Col.AIR || _tile == _oneWayTile) && !place_meeting(x + _dx, y + _dy, obj_obstacle)) {
		target_y += sign(_dy) * TILE_SIZE;
		target_x += sign(_dx) * TILE_SIZE;
		moving = true;
	} else {
		dir = opposite_direction(dir);
	}
}

// get out the the way of the player if they walk into path
if(place_meeting(target_x, target_y, obj_obstacle)) {
	dir = opposite_direction(dir);
	moving = false;
}

#endregion
#region // Update character sprite


if(dir == Facing.UP) {
	sprite_index = spr_player_up;
} else if(dir == Facing.DOWN) {
	sprite_index = spr_player_down;
} else if(dir == Facing.RIGHT) {
	sprite_index = spr_player_right;
} else if(dir == Facing.LEFT) {
	sprite_index = spr_player_left;
}

#endregion