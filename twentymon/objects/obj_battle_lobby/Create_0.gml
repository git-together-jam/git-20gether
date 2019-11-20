battleBegin = global.Save[? "beginBattle"];

if(battleBegin) {
	partyMons = ds_list_create();
	selectedMons = global.SelectedMons;
	selectedCount = 0;
	for(var i = 0; i < ds_list_size(global.PlayerParty); i++) {
		var _mon = ds_map_create();
		ds_map_copy(_mon, global.PlayerParty[| i]);
		var _mon_data = global.Twentymons[? _mon[? "ID"]];
		_mon[? "sprite"] = _mon_data[? "sprite"];
		_mon[? "name"] =_mon_data[? "name"];
		_mon[? "selected"] = false;
		var _stats = _mon[? "stats"];
		for(var j = 0; j < MAX_FRIENDLY_MONS; j++) {
			if(i == selectedMons[j] && _stats[? "hp"] > 0 && _stats[? "stamina"] > 0) {
				selectedCount ++;
				_mon[? "selected"] = true;
			} else {
				selectedMons[j] = -1;
			}
		}
		ds_list_add(partyMons, _mon);
	}
	numMons = ds_list_size(partyMons);
	draw_y = 0;
	draw_x = room_width / 2;
	lineHeight = 0;
	
} else {
	newMon = global.Save[? "gotMon"];
	global.Save[? "gotMon"] = false;
	battleY = room_height / 4;
	for (var i = 0; i < array_length_1d(global.SelectedMons); i++) {
		var _index = global.SelectedMons[i];
		if(_index == -1) {
			continue;
		}
		var _mon = global.PlayerParty[| _index];
		
		// Get data from the twentymon
		var _mon_data = global.Twentymons[? _mon[? "ID"]];
		var _stats = _mon[? "stats"];
		xpGained = [0, 0];
		// Spawn mon and set its stats
		with (instance_create_layer(room_width/2, battleY + BATTLE_MON_OFFSET, "Instances", obj_player_mon)) {
			// Set variables from the ds_map
			sprite_index = _mon_data[? "sprite"];
			name = _mon_data[? "name"];
			element = _mon_data[? "type"];
			level = _mon[? "level"];
			max_hp = _stats[? "max_hp"];
			max_stamina = _stats[? "max_stamina"];
			strength = _stats[? "strength"];
			defense = _stats[? "defense"];
			agility = _stats[? "agility"];
			hp = _stats[? "hp"];
			stamina = _stats[? "stamina"];
			partyIndex = _index;
			
			isEnemy = false;
			x = (room_width/(array_length_1d(global.SelectedMons) + 1)) * (i + 1);
			obj_battle_lobby.xpGained[i] = _mon[? "xp_gained"];
		}
	}
	leveledUp = [false, false];
	
	alarm[0] = room_speed * 5;

	layer_set_visible("Background_Image", true);
}


