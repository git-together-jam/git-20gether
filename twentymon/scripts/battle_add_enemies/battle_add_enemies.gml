/// @func battle_add_enemies([[type, level]...])
/// @arg [type... level]

var _enemies = argument0;

for (var i = 0; i < array_length_1d(_enemies); i++) {
		var _enemy = _enemies[i];
		
		var _type = _enemy[0];
		var _level = _enemy[1];
		
		// Get data from the global twentymon list
		var _enemyInfo = global.Twentymons[| _type];
		var _stats = ds_get_nested(_enemyInfo, "stats", _level - 1);
		
		// Spawn enemy and set its stats
		with (instance_create_layer(room_width/2, battleY - 40, "Instances", obj_enemy_mon)) {
			
			// Set variables from the ds_map
			sprite_index = _enemyInfo[? "sprite"];
			name = _enemyInfo[? "name"];
			element = _enemyInfo[? "element"];
			max_hp = _stats[? "max_hp"];
			max_stamina = _stats[? "max_stamina"];
			strength = _stats[? "strength"];
			defense = _stats[? "defense"];
			agility = _stats[? "agility"];
			hp = max_hp;
			stamina = max_stamina;
			
			// Add the enemy to the priority queue
			ds_priority_add(obj_battle.twentymon_queue, id, agility);
		}
}