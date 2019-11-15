message = monster_transform_string("This is a test message, and it's very long. Press |A to view the rest of the message. It has many lines, and there are some other things too! One of those things is an odd-numbered line!");
line_height = string_height("Ij");

width = 300;
height = 50;
padding = 5;

draw_set_font(fnt_dialog);
lines = dialog_create_lines(message, width - padding * 2);
lines_count = array_length_1d(lines);
line_index = 0;
line_display_count = floor(height / line_height);