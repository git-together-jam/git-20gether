/// @func dialog_show(message, prompt_count, strs..., listener)
/// @arg message
/// @arg prompt_count
/// @arg strs
/// @arg listener

/// DEPRECIATED

var _prompts = [];
var _followups = [];
var _listener = noone;
var _message = argument[0];

draw_set_font(fnt_dialog);

if(argument_count > 1) {
	var dialog_options = argument[1];
	for(var i = 0; i < dialog_options; i++) {
		_prompts[i] = monster_transform_string(argument[2 + i]);
		_followups[i] = argument[2 + dialog_options + i];
	}
	if(argument_count == 3 + 2 * dialog_options) {
		_listener = argument[2 + 2 * dialog_options];
	}
}

dialog_ask_question(_message, _prompts, _followups, _listener);
