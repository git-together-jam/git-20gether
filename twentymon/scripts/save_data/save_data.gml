/// @func save_data(?begin_battle)
/// @arg ?begin_battle

var _begin_battle = false;
if(argument_count > 0) {
	_begin_battle = argument[0];
}

var _room_data;
var _new_save;
if(ds_map_exists(global.Save, room)) {
	_room_data = global.Save[? room];
	_new_save = false;
} else {
	_room_data = ds_map_create();
	_new_save = true;
}

for(var i = 0; i < instance_number(obj_npc); i++) {
	var _npc = instance_find(obj_npc, i);
	var _npc_data;
	if(_new_save) {
		_npc_data = ds_map_create();	
	} else {
		_npc_data = _room_data[? _npc];
	}
	_npc_data[? "shouldApproach"] = _npc.shouldApproach;
	if(_new_save) {
		ds_map_add_map(_room_data, _npc, _npc_data);
	}
}

for(var i = 0; i < instance_number(obj_battle_trigger); i++) {
	var _pad = instance_find(obj_battle_trigger, i);
	var _pad_data;
	if(_new_save) {
		_pad_data = ds_map_create();	
	} else {
		_pad_data = _room_data[? _pad];
	}
	_pad_data[? "dead"] = _pad.dead;
	if(_new_save) {
		ds_map_add_map(_room_data, _pad, _pad_data);
	}
}
scr_debug(room);
global.Save[? "lastOverworldRoom"] = room;
global.Save[? "beginBattle"] = _begin_battle;

if(_new_save) {
	ds_map_add_map(global.Save, room, _room_data);
}
