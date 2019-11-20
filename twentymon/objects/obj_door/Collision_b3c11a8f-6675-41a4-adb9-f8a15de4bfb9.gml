/// @desc Create player spawner and move to new roow
with(instance_create_depth(x,y,0,obj_playerspawner)) {
	target_x = other.spawn_pos[0];
	target_y = other.spawn_pos[1];
	target_room = other.target_room;
}
save_data();
room_goto(target_room);