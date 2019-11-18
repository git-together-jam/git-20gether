/// @description Movement

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

// exit if dialog is active
if(!dialog_inactive()) {
	image_speed = 0;
	alarm[0] = currentActionTimer;
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
} else if(behavior == NpcBehavior.approaching) {
	_mvspd = TILE_MOVE_SPD / 2;
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
} else if(behavior == NpcBehavior.approaching) {
	image_speed = imgspeed / 2;
} else {
	image_speed = imgspeed;
}

#endregion 

#region // look for player
if(!moving && shouldApproach && !approaching) {
	var _coords = project_direction(dir, lookDistance * TILE_SIZE);
	var _y = (bbox_bottom + bbox_top) / 2;
	if(collision_line(x, _y, _coords[0], _coords[1], obj_player, true, true)) {
		var _lineOfSight = true;
		if(_coords[0] == x) {
			// up or down
			var _dist = (y - _coords[1]) / TILE_SIZE;
			var _dir = sign(_dist);
			for(var i = 0; i < abs(_dist); i++) {
				if(place_meeting(x, y + i * _dir * TILE_SIZE, obj_player)) {
					break;
				}
				else if(!tile_free(x, y + i * _dir * TILE_SIZE)) {
					_lineOfSight = false;
					break;
				}
			}
		} else if(_coords[1] == _y) {
			// left or right
			var _dist = (_coords[0] - x) / TILE_SIZE;
			var _dir = sign(_dist);
			for(var i = 0; i < abs(_dist); i++) {
				if(place_meeting(x + i * _dir * TILE_SIZE, y, obj_player)) {
					break;
				}
				else if(!tile_free(x + i * _dir * TILE_SIZE, y)) {
					_lineOfSight = false;
					break;
				}
			}
		} 
		if(_lineOfSight) {
			approaching = true;
			obj_player.frozen = true;
		}
	}
}

#endregion

// Used to correct characters position & move properly, because bottom center on sprites is necessary.
var _moveLeft = TILE_SIZE;
var _moveRight = TILE_SIZE;
var _moveUp = TILE_SIZE;
var _moveDown = TILE_SIZE;


#region // Moving

if(!moving && behavior != NpcBehavior.approaching) {
	var _dx = 0;
	var _dy = 0;
	if(_dirLeft) {
		_dx = -_moveLeft;
	}
	if(_dirRight) {
		_dx = _moveRight;
	}
	if(_dirUp) {
		_dy = -_moveUp;
	}
	if(_dirDown) {
		_dy = _moveDown;
	}
	if(approaching) {
		target_y += sign(_dy) * TILE_SIZE;
		target_x += sign(_dx) * TILE_SIZE;
		behavior = NpcBehavior.approaching;
		approaching = false;
		moving = true;
	}
	
	else if(tile_free(x + _dx, y + _dy)) {
		if(behavior == NpcBehavior.linewalk || behavior == NpcBehavior.approaching) {
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

else if(!moving && behavior == NpcBehavior.approaching) {
	var _vec = direction_to_vector(dir, TILE_SIZE);
	var _dx = _vec[0];
	var _dy = _vec[1];
	
	if(tile_free(x + _dx, y + _dy)) {
		target_x += _dx;
		target_y += _dy;
		moving = true;
	} else if (place_meeting(x + _dx, y + _dy, obj_player)) {
		behavior = NpcBehavior.stationary;
		target_x = x;
		target_y = y;
		approaching = false;
		shouldApproach = false;
		obj_player.frozen = false;
		originalDir = dir;
		currentActionTimer = alarm[0];
		dialog_set_message(message, self);
	} else {
		dir = opposite_direction(dir);
	}
	
}

// get out the the way of the player if they walk into path
if(place_meeting(target_x, target_y, obj_obstacle)) {
	if(behavior != NpcBehavior.approaching) {
		dir = opposite_direction(dir); 
	}
	moving = false;
}

#endregion