//message = monster_transform_string("This is a test message, and it's very long. Press |A to view the rest of the message. It has many lines, and there are some other things too! One of those things is an odd-numbered line! Also, this line goes on an even number. Will it work? It's time to find out! |$G");

width = room_width * 0.5;
height = 100;
padding = 15;

show_prompt = false;
selected_index = -1;
cursor_index = 0;

x = width / 2; // center in room
y = room_height - height; // pin to bottom
visible = false;

//draw_set_font(fnt_dialog);
//line_height = string_height("I") - 5;
//lines = dialog_create_lines(message, width - padding * 2);
//lines_count = array_length_1d(lines);
//line_index = 0;
//line_display_count = floor(height / line_height);
//last_page_offset = lines_count % line_display_count;