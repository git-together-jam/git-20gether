/// @description Movement


// exit if dialog is active
if(!dialog_inactive()) {
	image_speed = 0;
	exit;
}

#region // Move the Character
var _dirUp = dir == Facing.UP;
var _dirDown = dir == Facing.DOWN;
var _dirLeft = dir == Facing.LEFT;
var _dirRight = dir == Facing.RIGHT;
var _mvspd;
if(behavior == NpcBehavior.spin || behavior == NpcBehavior.stationary) {
	_mvspd = 0;
} else {
	_mvspd = TILE_MOVE_SPD;
}


if (target_x > x) { x += _mvspd;} // Right
if (target_x < x) { x -= _mvspd;} // Left
if (target_y > y) { y += _mvspd;} // Down
if (target_y < y) { y -= _mvspd;} // Up

// Stops character at position when reach goal
if (target_x == x && target_y == y) {
	moving = false;
}

if(_mvspd == 0 || !moving) {
	image_speed = 0;
} else {
	image_speed = imgspeed;
}

#endregion 

// Used to correct characters position & move properly, because bottom center on sprites is necessary.
var _moveLeft = TILE_SIZE;
var _moveRight = TILE_SIZE;
var _moveUp = TILE_SIZE;
var _moveDown = TILE_SIZE;

#region // Moving

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
	var _tile = tile_col_get_mask(x + _dx, y + _dy);
	if ((_tile == Tile_Col.AIR || _tile == _oneWayTile) && !place_meeting(x + _dx, y + _dy, obj_obstacle)) {
		if(behavior == NpcBehavior.linewalk) {
			target_y += sign(_dy) * TILE_SIZE;
			target_x += sign(_dx) * TILE_SIZE;
		}
		moving = true;
	} else {
		if(behavior == NpcBehavior.linewalk) {
			dir = opposite_direction(dir);
		} else if(behavior == NpcBehavior.wander) {
			event_user(1);
		}
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
#region // look for player?
var _coords = project_direction(dir, lookDistance * TILE_SIZE);

if(collision_line(x, y, _coords[0], _coords[1], obj_player, false, true)) {
	// do something;
	show_debug_message("Found Player");
}

#endregion