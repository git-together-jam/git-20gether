/// @desc Start battle on player collision
if(dead || array_length_1d(enemyMons) == 0) {
	instance_destroy();
}

if (!instance_exists(obj_player)) exit;

if (place_meeting(x, y, obj_player)) {
	dead = true;
	global.Save[? "wildBattle"] = true;
	save_data(true);
	global.EnemyMons = enemyMons;

	room_goto(rm_battle_lobby);
}