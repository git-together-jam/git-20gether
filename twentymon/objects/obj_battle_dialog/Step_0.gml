if(mouse_check_button_released(mb_left)) {
	var _h = line_height * 4 + padding * 2;
	if(point_in_rectangle(mouse_x, mouse_y, width + padding, y + padding, room_width, y + _h)) {		
		if(mouse_y > y + padding + line_height * 2 && optionsEnabled[2]) {
			selected_state = BattleActions.rest;
		} else if(mouse_y > y + padding + line_height && optionsEnabled[1]) {
			selected_state = BattleActions.defend;
		} else if(mouse_y > y + padding && optionsEnabled[0]) {
			selected_state = BattleActions.attack;
		}
	}
}