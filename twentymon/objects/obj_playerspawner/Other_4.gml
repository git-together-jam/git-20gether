/// @description Spawn player in new position
if (room == target_room) {
	// Destroy old player and spawn new
	if (instance_exists(obj_player)) instance_destroy(obj_player);
	instance_create_layer(target_x, target_y, "Instances", obj_player);
	
	// Center camera on player
	var _w = camera_get_view_width(view);
	var _h = camera_get_view_height(view);
	var _x = obj_player.x - _w / 2;
	var _y = obj_player.y - _h / 2;
	camera_set_view_pos(view, _x, _y);
	
	instance_destroy();
}