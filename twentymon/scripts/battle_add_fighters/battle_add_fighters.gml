/// @func battle_add_fighters([index...])
/// @arg [index...]

var _fighters = argument0;
for (var i = 0; i < array_length_1d(_fighters); i++) {
		var _index = _fighters[i];
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

			// Add the mon to the priority queue
			ds_priority_add(obj_battle.twentymon_queue, id, agility);
		}
}