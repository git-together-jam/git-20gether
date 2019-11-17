/// @func start_die_roll(nextState, playerRoll)
/// @arg nextState
/// @arg playerRoll
nextState = argument0;
_playerRoll = argument1;

instance_create_layer(room_width + 50, boardline - 100, "UI", obj_d20);
if (!_playerRoll) {
	obj_d20.playerControlled = false;
	obj_d20.canBump = false;
	obj_d20.image_blend = c_purple;
}

battle_change_state(BattleStates.dieRoll);