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

for(var i = 0; i < instance_number(obj_battle_trigger); i++) {
	var _pad = instance_find(obj_battle_trigger, i);
	var _pad_data = _room_data[? _pad];
	if(_pad_data[? "dead"]) {
		_pad.dead = true;
	}
}

global.Save[? "wildBattle"] = false;
if(!instance_exists(obj_player)) {
	instance_create_depth(global.Save[? "px"], global.Save[?"py"], 0, obj_player);
}