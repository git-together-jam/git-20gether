/// @desc States
if(instance_number(obj_player_mon) == 0 || instance_number(obj_enemy_mon) == 0) {
	var _win = instance_number(obj_enemy_mon) == 0;
	if(_win) {
		with(obj_player_mon) {
			// trigger stats cleanup
			instance_destroy();
		}
	}
	
	room_goto(global.OverworldRoom);
}

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
		
		currentMon.state = BattleMonState.attacking;
		// image_blend = c_green // Placeholder
		
		// Action confirm
		switch(targetAction) {
			case BattleActions.attack:
				with(obj_enemy_mon) {
					// Select attack target
					if (mouse_hover_object(id)) {
						state = BattleMonState.defending; // Placeholder
						if (mouse_check_button_pressed(mb_left)) {
							// Start attack die roll
							obj_battle.targetMon = id;
							with (obj_battle) {
								targetAction = -1;
								start_die_roll(BattleStates.playerAttackRoll, true);
							}
							state = BattleMonState.enemy;
						}
					} else {
						state = BattleMonState.enemy;
					}
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
		battle_do_attack(currentMon, targetMon);
		next_turn();
		break;
		#endregion
	
	case BattleStates.enemyTurn: #region Enemy turn
	
		targetMon = instance_find(obj_player_mon, 0);
		
		// Placeholder
		currentMon.state = BattleMonState.attacking;
		targetMon.state = BattleMonState.defending;
		
		// Enemy AI (not done)
		if ((waitTimer > 0) && (--waitTimer == 0)) {
			waitTimer = -1;
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
		battle_do_attack(currentMon, targetMon);
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