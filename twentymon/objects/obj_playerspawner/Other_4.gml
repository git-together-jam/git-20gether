/// @description Spawn player in new position
if (room == target_room) {	
	if (instance_exists(obj_player)) instance_destroy(obj_player);
	instance_create_layer(target_x, target_y, "Instances", obj_player);	
	instance_destroy();
}