/// @desc Add mons to the battle
battle_add_enemies(enemies);
battle_add_fighters(fighters);

// Organize enemies into row
var _enemyNumb = instance_number(obj_enemy_mon);
for (var i = 0; i < _enemyNumb; i++) {
	var _mon = instance_find(obj_enemy_mon, i);
	_mon.x = (room_width/(_enemyNumb + 1)) * (i + 1);
}

// Organize fighters into row
var _fighterNumb = instance_number(obj_player_mon);
for (var i = 0; i < _fighterNumb; i++) {
	var _mon = instance_find(obj_player_mon, i);
	_mon.x = (room_width/(_fighterNumb + 1)) * (i + 1);
}