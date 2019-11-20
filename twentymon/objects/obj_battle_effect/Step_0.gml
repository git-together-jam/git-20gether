if(target != noone && !exploding) {
	x = lerp(x, target.x, 0.3);
	y = lerp(y, target.y, 0.3);
	
	if(distance_to_point(target.x, target.y) < 2) {
		image_alpha = 1;
		audio_play_sound(snd_hit, 10, false);
		exploding = true;
	}
}