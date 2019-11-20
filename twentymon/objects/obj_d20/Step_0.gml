/// @description Animation and table bumbs

if (isRolling) {
	// Table bumps
	if (canBump && keyboard_check_pressed(ord("Z")) && bounces > 0) {
		shouldBump = true;
		bounces --;
		minValue = 0;
		bumpY = y;
		var _dist = abs(y - boardline);
		if(_dist < criticalThreshold) {
			superBounce = true;
		}
	}
	
	// Gravity and movement
	if (y < boardline) {
	    vsp += grav;
	} else {
		// Bounce back
		vsp *= -0.7;
		hsp *= 0.5;
		audio_play_sound(snd_die_bounce, 10, false);
		
		if (shouldBump) {
			image_speed = 2;
			vsp = max(vsp - 5, -8);
			hsp = irandom_range(2, 4) * choose(-1, 1);
			shouldBump = false;
			var _dist = abs(bumpY - boardline);
			if(_dist < criticalThreshold) {
				minValue = 9 + round((criticalThreshold - _dist) / criticalThreshold * 10);
				scr_debug(minValue);
			}
		}
	}
	
	x += hsp;
	y = approach(y, boardline, vsp);
	
	// Bounce on edges
	var _margin = 20;
	if (hsp > 0 && x > room_width - _margin)
	|| (hsp < 0 && x < _margin) {
		hsp = -hsp;
	}
}

// Stop rolling
if(abs(vsp) < 2 and y > boardline - 6){
	hsp = 0;
	vsp = 0;
	image_speed = 0;
	isRolling = false
}

// Animation
image_speed = approach(image_speed, 0, .01)
numspeed = image_speed / 15;

number = (number + numspeed) % (20 - minValue) + minValue;
if (number == 0) number = 20;
