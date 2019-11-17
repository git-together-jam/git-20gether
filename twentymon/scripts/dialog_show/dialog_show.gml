/// @func dialog_show(message, prompt_count, strs..., listener)
/// @arg message
/// @arg prompt_count
/// @arg strs
/// @arg listener

var _answers = [];
var _followups = [];
var _has_question = false;
var _longest_answer = 0;
var _listener = noone;

draw_set_font(fnt_dialog);

if(argument_count > 1) {
	var dialog_options = argument[1];

	for(var i = 0; i < dialog_options; i++) {
		_answers[i] = monster_transform_string(argument[2 + i]);
		_followups[i] = argument[2 + dialog_options + i];
		_longest_answer = max(_longest_answer, string_width(argument[1 + i]));
	}
	_has_question = true;
	if(argument_count == 3 + 2 * dialog_options) {
		_listener = argument[2 + 2 * dialog_options];
	}
}

with(obj_dialog_controller) {
	// set message variables
	dialog_set_message(argument[0], _listener);
	// set question prompt variables
	has_question = _has_question;
	prompts_width = _longest_answer;
	prompts = _answers;
	prompts_count = array_length_1d(_answers);
	responses = _followups;
	
	visible = true;
}
