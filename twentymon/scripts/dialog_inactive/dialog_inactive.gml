/// @func dialog_inactive

// returns whether or not the dialog controller is visible
// possible to extend functionality to menu screens, etc

if(!instance_exists(obj_dialog_controller)) {
	return true;
}

return !obj_dialog_controller.visible && obj_dialog_controller.ready;