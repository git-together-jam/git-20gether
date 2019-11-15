/// @description Player Movement

/* 

The following code presented here may not be completely commented well. 
A lot of the code I've imported has been rebuilt to support the decisions made here.
So I apologize for any "spaghetti code". ~TabularElf

*/


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
var _moveLeft = TILE_SIZE;
var _moveRight = TILE_SIZE;
var _moveUp = TILE_SIZE;
var _moveDown = TILE_SIZE;
var _yGrid = y-TILE_SIZE;

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
		
		// Get Tiles
		var _tileA = tile_col_get_mask(x-_moveLeft,_yGrid);
		var _tileB = tile_col_get_mask(x-(_moveLeft*2),_yGrid);
		
		// Check if Jumpable & Jump
		if (_tileB == Tile_Col.AIR && (_tileA == Tile_Col.JUMP || _tileA == Tile_Col.AIR || _tileA == Tile_Col.ONE_LEFT)) {//if global.col_data[# (x/TILE_SIZE)-2,(y/TILE_SIZE)] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE)-1,(y/TILE_SIZE)] == Tile_Col.AIR) {
			target_x -= _jump_move; 
			jumping = true;
		} else {
			if (_tileA == Tile_Col.AIR) {
				target_x -= TILE_SIZE; 
				jumping = true;
			}
		}
		break;
		
		// Right
		case Facing.RIGHT: 
		
		// Get Tiles
		var _tileA = tile_col_get_mask(x+_moveRight,_yGrid);
		var _tileB = tile_col_get_mask(x+(_moveRight*2),_yGrid);
		
		// Check if Jumpable & Jump
		if (_tileB == Tile_Col.AIR && (_tileA == Tile_Col.JUMP || _tileA == Tile_Col.AIR || _tileA == Tile_Col.ONE_RIGHT)) {//if global.col_data[# (x/TILE_SIZE)+2,(y/TILE_SIZE)] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE)+1,(y/TILE_SIZE)] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE)+1,(y/TILE_SIZE)] == Tile_Col.AIR) {
			target_x += _jump_move; 
			jumping = true;
		} else {
			if (_tileA == Tile_Col.AIR) {
				target_x += TILE_SIZE; 
				jumping = true;
			}
		}
		
		break;
		
		// Up
		case Facing.UP: 
		
		// Get Tiles
		var _tileA = tile_col_get_mask(x,_yGrid-_moveUp);
		var _tileB = tile_col_get_mask(x,_yGrid-(_moveUp*2));
		
		// Check if Jumpable & Jump
		if (_tileB == Tile_Col.AIR && (_tileA == Tile_Col.JUMP || _tileA == Tile_Col.AIR || _tileA == Tile_Col.ONE_UP)) {//if global.col_data[# (x/TILE_SIZE),(y/TILE_SIZE)-2] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE),(y/TILE_SIZE)-1] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE),(y/TILE_SIZE)-1] == Tile_Col.AIR)  {
			target_y -= _jump_move;
			jumping = true;
		} else {
			if (_tileA == Tile_Col.AIR) {
				target_y -= TILE_SIZE; 
				jumping = true;
			}
		}
		break;
		
		// Down
		case Facing.DOWN: 
		
		// Get Tiles
		var _tileA = tile_col_get_mask(x,_yGrid+_moveDown);
		var _tileB = tile_col_get_mask(x,_yGrid+(_moveDown*2));
		
		// Check if Jumpable & Jump
		if (_tileB == Tile_Col.AIR && (_tileA == Tile_Col.JUMP || _tileA == Tile_Col.AIR || _tileA == Tile_Col.ONE_DOWN)) {//if global.col_data[# (x/TILE_SIZE),(y/TILE_SIZE)+2] == Tile_Col.AIR && (global.col_data[# (x/TILE_SIZE),(y/TILE_SIZE)+1] == Tile_Col.JUMP or global.col_data[# (x/TILE_SIZE),(y/TILE_SIZE)+1] == Tile_Col.AIR) {
			target_y += _jump_move; 
			jumping = true;
		} else {
			if (_tileA == Tile_Col.AIR) {
				target_y += TILE_SIZE; 
				jumping = true;
			}
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

// Movement code. Pretty spaghetti like atm.

// LEFT
if (KEY_LEFT && !moving) {
	
	// Change facing direction (mostly for jumping) && assign sprite.
	dir = Facing.LEFT;
	sprite_index = spr_player_left;
	
	if holding >= MAX_KEYS_HELD {
		var _tile = tile_col_get_mask(x-_moveLeft,_yGrid);
		if (_tile == Tile_Col.AIR or _tile == Tile_Col.ONE_LEFT)  {
			target_x -= TILE_SIZE;
			moving = true;
		}
	}
}

// RIGHT
if (KEY_RIGHT && !moving) {
	
	// Change facing direction (mostly for jumping) && assign sprite.
	dir = Facing.RIGHT;
	sprite_index = spr_player_right;
	
	if holding >= MAX_KEYS_HELD {
		var _tile = tile_col_get_mask(x+_moveRight,_yGrid);
		if (_tile == Tile_Col.AIR || _tile == Tile_Col.ONE_RIGHT)   {
			target_x += TILE_SIZE;
			moving = true;
		}
	}
}

// UP
if (KEY_UP && !moving) {
	
	// Change facing direction (mostly for jumping) && assign sprite.
	dir = Facing.UP;
	sprite_index = spr_player_up;
	
	if holding >= MAX_KEYS_HELD {
		var _tile = tile_col_get_mask(x,_yGrid-_moveUp)
		if (_tile == Tile_Col.AIR || _tile == Tile_Col.ONE_UP)  {
			target_y -= TILE_SIZE;
			moving = true;
		}
	}
}

// DOWN
if (KEY_DOWN && !moving) {
	
	// Change facing direction (mostly for jumping) && assign sprite.
	dir = Facing.DOWN;
	sprite_index = spr_player_down;
	
	if holding >= MAX_KEYS_HELD {
		var _tile = tile_col_get_mask(x,_yGrid+_moveDown);
		if (_tile == Tile_Col.AIR || _tile == Tile_Col.ONE_DOWN)  {
			target_y += TILE_SIZE;
			moving = true;
		}
	}
}
#endregion
#endregion