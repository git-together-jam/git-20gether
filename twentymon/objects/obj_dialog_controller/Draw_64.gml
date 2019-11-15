/// @description Draw the dialog box
var draw_x = x;
var draw_y = y + padding;

// draw dialog box
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_dialog);
draw_rectangle(draw_x, draw_y, draw_x + width, draw_y + height, false);
draw_set_color(c_black);
draw_rectangle(draw_x, draw_y, draw_x + width, draw_y + height, true);

draw_x += padding;

// draw visible message lines
for(var i = 0; i < line_display_count; i++) {
	if(i + line_index >= lines_count) {
		break;
	}
	
	var line = lines[i + line_index];
	draw_text(draw_x, draw_y, line);
	draw_y += line_height;
}


// draw the dialog cursor
var cursor_index = line_index + last_page_offset + line_display_count <= lines_count && last_page_offset != 0 ? 0 : 1;
var cursor_x = draw_x + width - 2 * padding - sprite_get_width(spr_dialog_cursor);
var cursor_y = y + height - padding;
draw_sprite(spr_dialog_cursor, cursor_index, cursor_x, cursor_y);
