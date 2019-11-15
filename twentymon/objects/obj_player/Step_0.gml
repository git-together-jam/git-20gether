/// @description Insert description here
// You can write your code in this editor
#region // Move the Player
var mvspd;
if running or jumping {
	mvspd = gridMoveSpd*2;
} else mvspd = gridMoveSpd;

if (target_x > x) { x += mvspd;} // Right
if (target_x < x) { x -= mvspd;} // Left
if (target_y > y) { y += mvspd;} // Down
if (target_y < y) { y -= mvspd;} // Up

//Check for Destination

if (jumping) {
	image_index = 1;
	if (jump_dist > jdist) {
		jump_dist--;
	} else {
		jumping = false;
	}
} else {
	if (jump_dist < 0) {
		jump_dist++;
	}
}

if (target_x == x && target_y == y) {
	moving = false;
	if !KEY_UP || KEY_DOWN || KEY_LEFT || KEY_RIGHT {
		image_index = 0;
		image_speed = 0;
	}
}

#endregion 