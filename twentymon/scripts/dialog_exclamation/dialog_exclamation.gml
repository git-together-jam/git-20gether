/// dialog_exclamation(x, y)
/// @arg x
/// @arg y

var _x = argument0;
var _y = argument1;

with(obj_dialog_controller) {
	exclamation = true;
	exclamation_x = _x;
	exclamation_y = _y;
	alarm[1] = room_speed;
	visible = true;
}
