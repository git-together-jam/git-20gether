/// @func dialog_set_message(message)
/// @arg message

var _str = monster_transform_string(argument0);

with(obj_dialog_controller) {
	line_height = string_height("I") - 5;
	lines = dialog_create_lines(_str, width - padding * 2);
	lines_count = array_length_1d(lines);
	line_index = 0;
	line_display_count = floor(height / line_height);
	last_page_offset = lines_count % line_display_count;
}