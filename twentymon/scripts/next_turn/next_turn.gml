/// @func next_turn()

// Find starting mon
currentMon = next_mon();
		
// Set turn state
if (currentMon.isEnemy) {
	waitTimer = room_speed * 1.5;
	battle_change_state(BattleStates.enemyTurn);
} else {
	battle_change_state(BattleStates.playerTurn);
}