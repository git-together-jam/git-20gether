battleBegin = global.Save[? "beginBattle"];

if(battleBegin) {
	partyMons = ds_list_create();
	selectedMons = [-1, -1];
	for(var i = 0; i < ds_list_size(global.PlayerParty); i++) {
		var _mon = ds_map_create();
		ds_map_copy(_mon, global.PlayerParty[| i]);
		var _mon_data = global.Twentymons[? _mon[? "ID"]];
		_mon[? "sprite"] = _mon_data[? "sprite"];
		_mon[? "name"] =_mon_data[? "name"];
		_mon[? "selected"] = false;
		ds_list_add(partyMons, _mon);
	}
	numMons = ds_list_size(partyMons);
	draw_y = 0;
	draw_x = room_width / 2;
	lineHeight = 0;
	selectedCount = 0;
} else {
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
		}
	}
	leveledUp = [false, false];
	xpGained = [0, 0];
	alarm[0] = room_speed * 5;

	layer_background_sprite(layer_get_id("Background"), spr_battle_field);	
}


