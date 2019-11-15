/// @func dialog_show(str)
/// @arg str

var str = monster_transform_string(argument0);
var dialog = obj_dialog_controller;

draw_set_font(fnt_dialog);
with(dialog) {
	line_height = string_height("I") - 5;
	lines = dialog_create_lines(str, width - padding * 2);
	lines_count = array_length_1d(lines);
	line_index = 0;
	line_display_count = floor(height / line_height);
	last_page_offset = lines_count % line_display_count;
	visible = true;
}
