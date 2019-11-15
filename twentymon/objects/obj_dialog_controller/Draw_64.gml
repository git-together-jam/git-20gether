/// @description Draw the dialog box
var draw_x = x;
var draw_y = y + padding;

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_dialog);
draw_rectangle(draw_x, draw_y, draw_x + width, draw_y + height, false);
draw_set_color(c_black);
draw_rectangle(draw_x, draw_y, draw_x + width, draw_y + height, true);

var start_x = draw_x + padding;
draw_x = start_x;


for(var i = 0; i < line_display_count; i++) {
	if(i + line_index >= lines_count) {
		break;
	}
	var line = lines[i + line_index];
	
	draw_text(draw_x, draw_y, line);
	draw_y += line_height;
}
