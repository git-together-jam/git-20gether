/// @description draw exclamation


if(exclamation) {
	draw_set_color(c_white);
	draw_rectangle(exclamation_x, exclamation_y, exclamation_x + TILE_SIZE, exclamation_y + TILE_SIZE, false);
	draw_set_color(c_black);
	draw_set_font(fnt_dialog);
	draw_set_align(5);
	draw_text(exclamation_x + TILE_SIZE / 2, exclamation_y + TILE_SIZE / 2, "!");
}