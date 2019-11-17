/// @description Advance the dialog text

if(!visible) {
	exit;
}

if(show_prompt) {
	selected_index = cursor_index;
	show_prompt = false;
	dialog_set_message(responses[selected_index]);
	has_question = false;
} else {
	if(line_index + line_display_count < lines_count - 1 && line_index < lines_count - 1) {
		line_index += line_display_count;
	} else if(line_index + last_page_offset + line_display_count <= lines_count && last_page_offset != 0) {
		line_index += last_page_offset;
	} else if(has_question) {
		show_prompt = true;
	} else {
		// clean up dialog
		visible = false;
		show_prompt = false;
		ready = false;
		alarm[0] = 5;
		if(listener != noone) {
			with(listener) {
				event_user(15);
			}
		}
	}
}