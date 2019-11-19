/// @desc battle_change_state(state)
/// @arg state

switch(battleState) {
	case BattleStates.playerTurn:
		currentMon.state = BattleMonState.idle;
		break;
	case BattleStates.enemyTurn:
		currentMon.state = BattleMonState.enemy
		targetMon.state = BattleMonState.idle
		break;
	default: break;
}

previousState = battleState;
battleState = argument0;