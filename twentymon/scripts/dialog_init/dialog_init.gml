/// @func dialog_init

// set up view dependent variables

with(obj_dialog_controller) {
	
	var _cam = view_camera[0];
	var _view_width = camera_get_view_width(_cam);
	var _view_height = camera_get_view_height(_cam);

	width = _view_width * 0.75;

	x = (_view_width - width) / 2; // center in room
	y = _view_height - height; // pin to bottom
}