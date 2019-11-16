/// @desc States
if (timer < 90000000000000000) timer++;

goodpoke.image_yscale = sin(timer/15)*0.1 + 1;
badpoke.image_yscale = sin(timer/15)*0.1 + 1;

switch(battleState) {
	case BattleStates.start: #region Start
		// Animate the twentymons moving to the battle
		if (goodpoke.x < 80) {
			goodpoke.x += twentymonSpeed;
			badpoke.x = room_width - goodpoke.x;
		} else {
			change_battle_state(BattleStates.playerTurn);
		}
		break;
		#endregion
	case BattleStates.playerTurn: #region Player turn
		// Placeholder for now
		if (keyboard_check_pressed(ord("Z"))) {
			instance_create_layer(room_width + 50, boardline - 100, "UI", obj_d20);
			nextState = BattleStates.playerTurn;
			change_battle_state(BattleStates.dieRoll);
		}
		break;
		#endregion
	case BattleStates.dieRoll: #region Die roll
		// Table bumps
		if (keyboard_check_pressed(ord("Z"))) {
			with(obj_d20) {
				shouldBump = true;
			}
		}
		
		if (!obj_d20.isRolling) {
			// Placeholder
			if (keyboard_check_pressed(ord("X"))) {
				dieResult = floor(obj_d20.number);
				switch(nextState) {
					default:
					break;
				}
				instance_destroy(obj_d20);
				change_battle_state(nextState)
			}
		}
		break;
		#endregion
}