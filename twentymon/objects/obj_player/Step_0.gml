/// @description Player Movement

/* 

The following code presented here may not be completely commented well. 
A lot of the code I've imported has been rebuilt to support the decisions made here.
So I apologize for any "spaghetti code". ~TabularElf

*/

// check for dialog
if(!character_can_move()) {
	image_speed = 0;
	exit;
}


#region // Move the Player
var _mvspd;
if (running) {
	_mvspd = TILE_MOVE_SPD*2;
} else if (jumping) {
	_mvspd = TILE_JUMP_SPD;
} else _mvspd = TILE_MOVE_SPD;

// Get holding current

if (holding >= MAX_KEYS_HELD) {
	image_speed = imgspd;	
}

if (target_x > x) { x += _mvspd;} // Right
if (target_x < x) { x -= _mvspd;} // Left
if (target_y > y) { y += _mvspd;} // Down
if (target_y < y) { y -= _mvspd;} // Up


// Jumping specific animation

if (jumping) {
	image_index = 1;
	if (jump_Dist > JUMP_DIST_ANIM) {
		jump_Dist--;
	} else {
		jumping = false;
	}
} else {
	if (jump_Dist < 0) {
		jump_Dist++;
	}
}

// Stops player at position when reach goal

if (target_x == x && target_y == y) {
	moving = false;
	if !(KEY_UP || KEY_DOWN || KEY_LEFT || KEY_RIGHT) {
		image_index = 0;
		image_speed = 0;
	}
}

#endregion 

// Used to correct player position & move properly, because bottom center on sprites is necessary.
var _moveLeft = TILE_MOVE_SIZE;
var _moveRight = TILE_MOVE_SIZE;
var _moveUp = TILE_MOVE_SIZE;
var _moveDown = TILE_MOVE_SIZE;

var _jumpLeft = TILE_SIZE;
var _jumpRight = TILE_SIZE;
var _jumpUp = TILE_SIZE;
var _jumpDown = TILE_SIZE;

#region //Movement Input
#region //Jumping

if (KEY_JUMP && !moving && !jumping) {
	
	// Begin jump
	//audio_play_sound(snd_jump,.5,0);
	moving = true;
	//image_speed = imgspd;
	var _jump_move = TILE_SIZE*2;
	switch(dir) {
		// Left
		case Facing.LEFT:
		
		// Check if Jumpable & Jump
		if (!tile_collision(x - _jumpLeft * 2, y, [Tile_Col.AIR]) &&
		!tile_collision(x - _jumpLeft, y, [Tile_Col.JUMP, Tile_Col.AIR, Tile_Col.ONE_LEFT])) {//if global.col_data[# (x/TILE_SIZE)-2,(y/TILE_SIZE)] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.AIR) {
			target_x -= _jump_move;
			jumping = true;
		} else if (!tile_collision(x - _jumpLeft, y, [Tile_Col.AIR])) {
			target_x -= TILE_SIZE; 
			jumping = true;
		} else if (!tile_collision(x - _moveLeft, y, [Tile_Col.AIR])) {
			target_x -= TILE_MOVE_SIZE; 
			jumping = true;
		}
		break;
		
		// Right
		case Facing.RIGHT:
		
		// Check if Jumpable & Jump
		if (!tile_collision(x + _jumpRight * 2, y, [Tile_Col.AIR]) &&
		!tile_collision(x + _jumpRight, y, [Tile_Col.JUMP, Tile_Col.AIR, Tile_Col.ONE_LEFT])) {//if global.col_data[# (x/TILE_SIZE)-2,(y/TILE_SIZE)] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.AIR) {
			target_x += _jump_move;
			jumping = true;
		} else if (!tile_collision(x + _jumpRight, y, [Tile_Col.AIR])) {
			target_x += TILE_SIZE; 
			jumping = true;
		} else if (!tile_collision(x + _moveRight, y, [Tile_Col.AIR])) {
			target_x += TILE_MOVE_SIZE; 
			jumping = true;
		}
		break;
		
		// Up
		case Facing.UP:
		
		// Check if Jumpable & Jump
		if (!tile_collision(x, y - _jumpUp * 2, [Tile_Col.AIR]) &&
		!tile_collision(x, y - _jumpUp, [Tile_Col.JUMP, Tile_Col.AIR, Tile_Col.ONE_LEFT])) {//if global.col_data[# (x/TILE_SIZE)-2,(y/TILE_SIZE)] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.AIR) {
			target_y -= _jump_move;
			jumping = true;
		} else if (!tile_collision(x, y - _jumpUp, [Tile_Col.AIR])) {
			target_y -= TILE_SIZE; 
			jumping = true;
		} else if (!tile_collision(x, y - _moveLeft, [Tile_Col.AIR])) {
			target_y -= TILE_MOVE_SIZE; 
			jumping = true;
		}
		break;
		
		// Down
		case Facing.DOWN:
		
		// Check if Jumpable & Jump
		if (!tile_collision(x, y + _jumpDown * 2, [Tile_Col.AIR]) &&
		!tile_collision(x, y + _jumpDown, [Tile_Col.JUMP, Tile_Col.AIR, Tile_Col.ONE_LEFT])) {//if global.col_data[# (x/TILE_SIZE)-2,(y/TILE_SIZE)] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.AIR) {
			target_y += _jump_move;
			jumping = true;
		} else if (!tile_collision(x, y + _jumpDown, [Tile_Col.AIR])) {
			target_y += TILE_SIZE; 
			jumping = true;
		} else if (!tile_collision(x, y + _moveDown, [Tile_Col.AIR])) {
			target_y += TILE_MOVE_SIZE; 
			jumping = true;
		}
		break;
	}
}
#endregion
#region //Moving

// Check for sprinting
if (KEY_SPRINT && !moving) {
	running = true;
} else if !moving {
	running = false;
}

// Check Holding state, so player can turn but not move. I mean, why not?

if !(KEY_UP || KEY_DOWN || KEY_LEFT || KEY_RIGHT) {
	holding = 0;
} else if holding < MAX_KEYS_HELD && (KEY_UP || KEY_DOWN || KEY_LEFT || KEY_RIGHT) {
	holding++;
} 

// Movement code. 

if(!moving) {
	var _dx = 0;
	var _dy = 0;
	var _oneWayTile;
	if(KEY_LEFT) {
		dir = Facing.LEFT;
		sprite_index = spr_player_left;
		_dx = -_moveLeft;
		_oneWayTile = Tile_Col.ONE_LEFT;
	}
	else if(KEY_RIGHT) {
		dir = Facing.RIGHT;
		sprite_index = spr_player_right;
		_dx = _moveRight;
		_oneWayTile = Tile_Col.ONE_RIGHT;
	}
	else if(KEY_UP) {
		dir = Facing.UP;
		sprite_index = spr_player_up;
		_dy = -_moveUp;
		_oneWayTile = Tile_Col.ONE_UP;
	}
	else if(KEY_DOWN) {
		dir = Facing.DOWN;
		sprite_index = spr_player_down;
		_dy = _moveDown;
		_oneWayTile = Tile_Col.ONE_DOWN;
	}
	
	if(holding >= MAX_KEYS_HELD) {
		/*var _tile = tile_col_get_mask(x + _dx, _yGrid + _dy);
		if ((_tile == Tile_Col.AIR || _tile == _oneWayTile) && !place_meeting(x + _dx, y + _dy, obj_obstacle)) {
			target_y += sign(_dy) * TILE_SIZE;
			target_x += sign(_dx) * TILE_SIZE;
		if (!tile_collision(x + _dx, y + _dy, [Tile_Col.AIR, _oneWayTile]) && !place_meeting(x + _dx, y + _dy, obj_obstacle)) {
			target_y += sign(_dy) * TILE_MOVE_SIZE;
			target_x += sign(_dx) * TILE_MOVE_SIZE;
			moving = true;
		}*/
		if(tile_free(x + _dx, y + _dy, dir)) {
			target_y += sign(_dy) * TILE_SIZE;
			target_x += sign(_dx) * TILE_SIZE;
			moving = true;
		}
	}
}

#endregion
#endregion
