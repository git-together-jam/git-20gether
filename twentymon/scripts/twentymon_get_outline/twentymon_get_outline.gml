/// @func twentymon_get_outline(state)
/// @arg state

var _state = argument0;

switch(_state) {
	case BattleMonState.attacking:
		return [80 / 255.0, 163 / 255.0, 67 / 255.0]; // green
	case BattleMonState.defending:
		return [166 / 255.0, 38 / 255.0, 38 / 255.0]; // red
	case BattleMonState.enemy:
		return [38 / 255.0, 70 / 255.0, 166 / 255.0]; // blue
	case BattleMonState.idle:
		return [1, 1, 1];
}