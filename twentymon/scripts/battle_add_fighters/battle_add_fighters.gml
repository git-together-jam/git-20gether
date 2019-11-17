/// @func battle_add_fighters([index...])
/// @arg [index...]

var _fighters = argument0;

for (var i = 0; i < array_length_1d(_fighters); i++) {
		var _index = _fighters[i];
		var _mon = global.PlayerParty[| _index];
		
		// Get data from the twentymon
		var _monInfo = global.Twentymons[| real(_mon[? "type"])];
		var _stats = _mon[? "stats"];
		
		// Spawn mon and set its stats
		with (instance_create_layer(room_width/2, battleY + 40, "Instances", obj_player_mon)) {
			// Set variables from the ds_map
			sprite_index = _monInfo[? "sprite"];
			name = _monInfo[? "name"];
			element = _monInfo[? "element"];
			max_hp = _stats[? "max_hp"];
			max_stamina = _stats[? "max_stamina"];
			strength = _stats[? "strength"];
			defense = _stats[? "defense"];
			agility = _stats[? "agility"];
			hp = max_hp;
			stamina = max_stamina;
			
			is_enemy = false;
			
			// Add the mon to the priority queue
			ds_priority_add(obj_battle.twentymon_queue, id, agility);
		}
}