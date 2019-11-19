if(exploding) {
	effect_create_above(ef_explosion, x, y, 0, image_blend);
	instance_destroy();
} else {
	draw_set_color(image_blend);
	draw_circle(x, y, 30, false);
}
