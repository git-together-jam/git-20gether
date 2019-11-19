/// @func battle_dialog_set_message(strs...)
/// @arg strs...

var _str = "";
for(var i = 0; i < argument_count; i ++) {
	_str += string(argument[i]);
	if(i != argument_count - 1) {
		_str += " ";
	}
}

obj_battle_dialog.message = monster_transform_string(_str);