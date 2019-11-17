/// @desc States
switch(battleState) {
	case BattleStates.start: #region Start
		// Battle start animation (not done)
		
		// Start first turn
		next_turn();
		
		break;
		#endregion
	
	case BattleStates.playerTurn: #region Player turn	
		// Action select (not done)
		if (keyboard_check_pressed(ord("Z"))) {
			targetAction = BattleActions.attack;
		}
		
		currentMon.image_blend = c_green; // Placeholder
		
		// Action confirm
		switch(targetAction) {
			case BattleActions.attack:
				with(obj_enemy_mon) {
					// Select attack target
					if (mouse_hover_object(id)) {
						image_blend = c_blue; // Placeholder
						if (mouse_check_button_pressed(mb_left)) {
							// Start attack die roll
							obj_battle.targetMon = id;
							with (obj_battle) {
								targetAction = -1;
								start_die_roll(BattleStates.playerAttackRoll, true);
							}
							image_blend = c_red;
						}
					} else image_blend = c_red;
				}
				break;
			default:
				targetAction = -1;
				break;
		}
		
		break;
		#endregion
	
	case BattleStates.playerAttackRoll: #region Player attack roll
		attackRoll = dieResult;
		start_die_roll(BattleStates.enemyDefenseRoll, false);
		break;
		#endregion
	case BattleStates.enemyDefenseRoll: #region Enemy defense roll
		defenseRoll = dieResult;
		battle_change_state(BattleStates.playerAttack);
		break;
		#endregion
	case BattleStates.playerAttack: #region Player attack
		var _dmg = calculate_attack_damage();
		targetMon.hp -= _dmg;
		next_turn();
		break;
		#endregion
	
	case BattleStates.enemyTurn: #region Enemy turn
		
		currentMon.image_blend = c_green; // Placeholder
		
		// Enemy AI (not done)
		if ((waitTimer > 0) && (--waitTimer == 0)) {
			waitTimer = -1;
			targetMon = instance_find(obj_player_mon, 0);
			start_die_roll(BattleStates.enemyAttackRoll, false);
		}
		
		break;
		#endregion
	
	case BattleStates.enemyAttackRoll: #region Enemy attack roll
		attackRoll = dieResult;
		start_die_roll(BattleStates.playerDefenseRoll, true);
		break;
		#endregion
	case BattleStates.playerDefenseRoll: #region Player defense roll
		defenseRoll = dieResult;
		battle_change_state(BattleStates.enemyAttack);
		break;
		#endregion
	case BattleStates.enemyAttack: #region Enemy attack
		var _dmg = calculate_attack_damage();
		targetMon.hp -= _dmg;
		next_turn();
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
				battle_change_state(nextState)
			}
		}
		break;
		#endregion
}