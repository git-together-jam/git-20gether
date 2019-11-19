if(target != noone && !exploding) {
	x = lerp(x, target.x, 0.3);
	y = lerp(y, target.y, 0.3);
	
	if(distance_to_object(target) < 2) {
		exploding = true;
	}
}