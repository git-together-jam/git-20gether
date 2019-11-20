/// @func load_data
if(!ds_map_exists(global.Save, room)) {
	return;
}

var _room_data = global.Save[? room];
for(var i = 0; i < instance_number(obj_npc); i++) {
	var _npc = instance_find(obj_npc, i);
	var _npc_data = _room_data[? _npc];
	_npc.shouldApproach = _npc_data[? "shouldApproach"];
}
