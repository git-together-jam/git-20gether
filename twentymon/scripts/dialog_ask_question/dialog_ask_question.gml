/// @func dialog_ask_question(message, prompts, followups, ?listener)
/// @arg message
/// @arg prompts
/// @arg followups
/// @arg ?listener

var _message = argument[0];
var _prompts = argument[1];
var _followups = argument[2];
var _listener = noone;
if(argument_count == 4) {
	_listener = argument[3];
}

var _longest_prompt = 0;
draw_set_font(global.SmallFont);
for(var i = 0; i < array_length_1d(_prompts); i++) {
	_prompts[i] = monster_transform_string(_prompts[i]);
	_longest_prompt = max(_longest_prompt, string_width(_prompts[i]) + obj_dialog_controller.padding * 2);
}

with(obj_dialog_controller) {
	// set message variables
	dialog_set_message(_message, _listener);
	// set question prompt variables
	has_question = true;
	prompts_width = _longest_prompt;
	prompts = _prompts;
	prompts_count = array_length_1d(_prompts);
	responses = _followups;
	
	visible = true;
}
