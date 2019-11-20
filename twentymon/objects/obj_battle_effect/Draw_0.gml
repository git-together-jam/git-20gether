if(exploding) {
	if(alarm[0] == -1) {
		effect_create_above(ef_explosion, x, y, 0, image_blend);
		alarm[0] = 30;
	} else {
		draw_set_color(c_maroon);
		draw_set_font(global.SmallFont);
		draw_text(x, y, -damage);
		y -= 3;
	}
} else {
	draw_set_color(image_blend);
	draw_circle(x, y, 15, false);
}
