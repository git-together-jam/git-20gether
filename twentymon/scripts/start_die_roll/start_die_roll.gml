/// @func start_die_roll(nextState, playerRoll)
/// @arg nextState
/// @arg playerRoll
nextState = argument0;
_playerRoll = argument1;

instance_create_layer(room_width + 50, boardline - 100, "UI", obj_d20);
if (!_playerRoll) {
	obj_d20.playerControlled = false;
	obj_d20.canBump = false;
	obj_d20.sprite_index = spr_d20_enemy;
	// come from the opposite side of the screen
	obj_d20.x = -50;
	obj_d20.hsp *= -1;
}

battle_change_state(BattleStates.dieRoll);