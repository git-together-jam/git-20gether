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

if(show_prompt) {
	var prompt_x = x + width - prompts_width;
	var prompt_y = y - line_height * prompts_count;
	draw_set_color(c_white);
	draw_rectangle(prompt_x, prompt_y, x + width, y, false);
	draw_set_color(c_black);
	draw_rectangle(prompt_x, prompt_y, x + width, y, true);
	var text_y = prompt_y;
	for(var i = 0; i < prompts_count; i++) {
		var option = prompts[i];
		draw_text(prompt_x + padding, text_y, option);
		text_y += line_height;
	}
	
	draw_sprite(spr_dialog_cursor, 2, prompt_x, prompt_y + (cursor_index + 0.5) * line_height);
}


// draw the dialog cursor
var cursor_subimage = line_index + line_display_count < lines_count ? 0 : 1;
var cursor_x = draw_x + width - 2 * padding - sprite_get_width(spr_dialog_cursor);
var cursor_y = y + height - padding;
draw_sprite(spr_dialog_cursor, cursor_subimage, cursor_x, cursor_y);
