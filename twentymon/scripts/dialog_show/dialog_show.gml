/// @func dialog_show(str)
/// @arg str

var str = monster_transform_string(argument0);
var dialog = obj_dialog_controller;

draw_set_font(fnt_dialog);
dialog.line_height = string_height("I") - 5;
dialog.lines = dialog_create_lines(str, dialog.width - dialog.padding * 2);
dialog.lines_count = array_length_1d(dialog.lines);
dialog.line_index = 0;
dialog.line_display_count = floor(dialog.height / dialog.line_height);
dialog.last_page_offset = dialog.lines_count % dialog.line_display_count;
dialog.visible = true;