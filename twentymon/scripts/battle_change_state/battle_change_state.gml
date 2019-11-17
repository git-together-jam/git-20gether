/// @desc battle_change_state(state)
/// @arg state

switch(battleState) {
	case BattleStates.playerTurn:
		currentMon.image_blend = c_white;
		break;
	default: break;
}

previousState = battleState;
battleState = argument0;