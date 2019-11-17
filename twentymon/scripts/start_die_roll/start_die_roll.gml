/// @func start_die_roll(nextState)
/// @arg nextState
nextState = argument0;
instance_create_layer(room_width + 50, boardline - 100, "UI", obj_d20);
change_battle_state(BattleStates.dieRoll);