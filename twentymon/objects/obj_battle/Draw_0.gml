/// @desc Debug stuff and info
draw_set_colour(c_black);

draw_set_align(3);
draw_text(room_width - 5, 5, "Die Result: " + string(dieResult));
draw_text(room_width - 5, 20, "Attack Roll: " + string(attackRoll));
draw_text(room_width - 5, 35, "Defense Roll: " +  string(defenseRoll));

/// Placeholder
var _text = "";
switch(targetAction) {
	case -1:
		if (battleState == BattleStates.playerTurn) _text = "Press Z to attack";
		break;
	case BattleActions.attack:
		_text = "Choose a target";
		break;
}

draw_set_align(7);
draw_text(5, room_height - 5, _text);
///