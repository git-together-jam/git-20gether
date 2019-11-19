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

if(!instance_exists(currentMon)) {
	next_mon();
}

switch(battleState) {
	case BattleStates.start: #region Start
		// Battle start animation (not done)
		
		// Start first turn
		next_turn();
		
		break;
		#endregion
	
	case BattleStates.playerTurn: #region Player turn	
		// Action select
		currentMon.resting = false;
		battle_dialog_set_message("What will", currentMon.name, "do?");
		if (obj_battle_dialog.selected_state != noone) {
			targetAction = obj_battle_dialog.selected_state;
			obj_battle_dialog.selected_state = noone;
			currentMon.state = BattleMonState.attacking;
		}
		
		// Action confirm
		switch(targetAction) {
			case BattleActions.attack:
				battle_dialog_set_message("Who will", currentMon.name, "attack?");
				with(obj_enemy_mon) {
					// Select attack target
					if (mouse_hover_object(id)) {
						state = BattleMonState.defending;
						if (mouse_check_button_pressed(mb_left)) {
							// Start attack die roll
							battle_dialog_set_message("Roll for attack. Press |z to bump the die.");
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
			case BattleActions.defend:
				battle_dialog_set_message(currentMon.name, "gave up its attack to raise its defenses.");
				currentMon.defense += 2;
				targetAction = -1;
				currentMon.stamina -= defendStaminaCost;
				next_turn();
				break;
			case BattleActions.rest:
				battle_dialog_set_message(currentMon.name, "gave up its defense roll to restore stamina.");
				currentMon.stamina = currentMon.max_stamina;
				targetAction = -1;
				currentMon.resting = true;
				next_turn();
			default:
				targetAction = -1;
				break;
		}
		
		break;
		#endregion
	
	case BattleStates.playerAttackRoll: #region Player attack roll
		attackRoll = dieResult;
		battle_dialog_set_message("The enemy", targetMon.name, "rolls for defense.");
		start_die_roll(BattleStates.enemyDefenseRoll, false);
		break;
		#endregion
	case BattleStates.enemyDefenseRoll: #region Enemy defense roll
		defenseRoll = dieResult;
		battle_dialog_set_message(currentMon.name, "attacks the enemy", targetMon.name, ".");
		currentMon.stamina -= attackStaminaCost;
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
		
		currentMon.state = BattleMonState.attacking;
		targetMon.state = BattleMonState.defending;
		battle_dialog_set_message("The enemy", currentMon.name, "attacks", targetMon.name, ".");
		
		// Enemy AI (not done)
		if ((waitTimer > 0) && (--waitTimer == 0)) {
			waitTimer = -1;
			start_die_roll(BattleStates.enemyAttackRoll, false);
			battle_dialog_set_message("The enemy", currentMon.name, "rolls for attack.");
		}
		
		break;
		#endregion
	
	case BattleStates.enemyAttackRoll: #region Enemy attack roll
		attackRoll = dieResult;
		if(targetMon.resting) {
			battle_dialog_set_message(targetMon.name, " gave up its defense to restore stamina. Click to continue");
			if (mouse_check_button_pressed(mb_left)) {
				battle_change_state(BattleStates.enemyAttack);
			}
			defenseRoll = 0;
		} else {
			battle_dialog_set_message("Roll for defense. Press |z bump the die.");
			start_die_roll(BattleStates.playerDefenseRoll, true);
		}
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
			battle_dialog_set_message("A", floor(obj_d20.number), "was rolled. Click to continue");
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