/// @desc States
switch(battleState) {
	case BattleStates.start: #region Start
		// Battle start animation (not done)
		
		// Find starting mon
		current_mon = ds_priority_delete_max(twentymon_queue);
		ds_priority_add(twentymon_buffer, current_mon, current_mon.agility);
		
		// Set starting turn state
		/*if (current_mon.is_enemy) change_battle_state(BattleStates.enemyTurn);
		else*/ change_battle_state(BattleStates.playerTurn);	
		break;
		#endregion
	case BattleStates.playerTurn: #region Player turn
		// Action select (not done)
		if (keyboard_check_pressed(ord("Z"))) {
			current_action = BattleActions.attack;
		}
		
		// Action confirm
		switch(current_action) {
			case BattleActions.attack:
				with(obj_enemy_mon) {
					// Select attack target
					if (mouse_hover_object(id)) {
						image_blend = c_blue; // Placeholder
						if (mouse_check_button_pressed(mb_left)) {
							// Start attack die roll
							obj_battle.action_target = id;
							with (obj_battle) {
								start_die_roll(BattleStates.playerAttackRoll);
							}
							image_blend = c_red;
						}
					} else image_blend = c_red;
				}
				break;
			default:
				current_action = -1;
				break;
		}
		
		break;
		#endregion
	case BattleStates.enemyTurn: #region Enemy turn
		// Enemy AI (not done)
		start_die_roll(BattleStates.enemyAttackRoll);
		break;
		#endregion
	case BattleStates.dieRoll: #region Die roll		
		if (!obj_d20.isRolling) {
			if (mouse_check_button_pressed(mb_left)) {
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