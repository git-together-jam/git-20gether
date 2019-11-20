/// @desc Start battle on player collision
if (!instance_exists(obj_player)) exit;

if (place_meeting(x, y, obj_player)) {
	save_data(true);
	global.EnemyMons = enemyMons;

	room_goto(rm_battle_lobby);
}