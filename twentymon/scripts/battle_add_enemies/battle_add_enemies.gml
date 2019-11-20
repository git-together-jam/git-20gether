/// @func battle_add_enemies([[ID, level]...])
/// @arg [ID... level]

var _enemies = argument0;

for (var i = 0; i < array_length_1d(_enemies); i++) {
	var _enemy = _enemies[i];
		
	var _id = _enemy[0];
	var _level = _enemy[1];
		
	if(_level == -1 || _id == -1) {
		continue;
	}
		
	// Get data from the global twentymon list
	var _mon_data = global.Twentymons[? _id];
	var _stats = ds_map_create();
	ds_map_copy(_stats, _mon_data[? "base_stats"]);
	var _stat_gain = twentymon_get_stat_gain(_id, _level - 1);

	_stats[? "max_hp"] += _stat_gain[? "max_hp"];
	_stats[? "max_stamina"] += _stat_gain[? "max_stamina"];
	_stats[? "strength"] += _stat_gain[? "strength"];
	_stats[? "defense"] += _stat_gain[? "defense"];
	_stats[? "agility"] += _stat_gain[? "agility"];
		
	// Spawn enemy and set its stats
	with (instance_create_layer(room_width/2, battleY - BATTLE_MON_OFFSET, "Instances", obj_enemy_mon)) {
			
		// Set variables from the ds_map
		sprite_index = _mon_data[? "sprite"];
		name = _mon_data[? "name"];
		element = _mon_data[? "type"];
		level = _level;
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