/// @description Interact with object ahead
if(!moving && dialog_inactive()) {
	var _coords = project_direction(dir, TILE_SIZE);
	var _inst = instance_position(_coords[0], _coords[1], obj_interactable);
	if(_inst != noone) {
		dialog_set_message(_inst.message);
	}
}