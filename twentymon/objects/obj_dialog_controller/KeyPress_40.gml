/// @description Move the prompt cursor down

if(visible && show_prompt) {
	cursor_index = min(cursor_index + 1, prompts_count - 1);
}
