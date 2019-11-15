/// @description Advance the dialog text

if(line_index + line_display_count < lines_count - 1 && line_index < lines_count - 1) {
	line_index += line_display_count;
} else if(line_index + last_page_offset + line_display_count <= lines_count && last_page_offset != 0) {
	line_index += last_page_offset;
} else {
	visible = false;
}