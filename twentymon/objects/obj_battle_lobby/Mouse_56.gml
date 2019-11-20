if(battleBegin) {
	if(mouse_x > draw_x && mouse_y > draw_y - lineHeight / 2 && mouse_y < draw_y + numMons * lineHeight - lineHeight / 2) {
		var _index = floor((mouse_y - (draw_y - lineHeight / 2)) / lineHeight);
		var _mon = partyMons[| _index];
		var _stats = _mon[? "stats"];
		if(_mon[? "selected"] == false && _stats[? "hp"] > 0 && _stats[? "stamina"] > 0 && selectedCount <= MAX_FRIENDLY_MONS) {
			_mon[? "selected"] = true;
			for(var i = 0; i < array_length_1d(selectedMons); i++) {
				if(selectedMons[i] == -1) {
					selectedMons[i] = _index;
					break;
				}
			}
			selectedCount ++;
		}
	}
	if(point_in_rectangle(mouse_x, mouse_y, room_width / 4 - 32, room_height / (MAX_FRIENDLY_MONS + 1) - 32, room_width / 4 + 32, room_height / (MAX_FRIENDLY_MONS + 1) + 32)) {
		if(selectedMons[0] != -1) {
			_mon = partyMons[| selectedMons[0]];
			selectedMons[0] = -1;
			_mon[? "selected"] = false;
			selectedCount --;
		}
	}

	if(point_in_rectangle(mouse_x, mouse_y, room_width / 4 - 32, 2 * room_height / (MAX_FRIENDLY_MONS + 1) - 32, room_width / 4 + 32, 2 * room_height / (MAX_FRIENDLY_MONS + 1) + 32)) {
		if(selectedMons[1] != -1) {
			_mon = partyMons[| selectedMons[1]];
			selectedMons[1] = -1;
			_mon[? "selected"] = false;
			selectedCount --;
		}
	}
}

if(point_in_rectangle(mouse_x, mouse_y, room_width / 2 - 100, room_height - 125, room_width / 2  + 100, room_height - 75)) {
	if(battleBegin && selectedCount > 0) {
		global.SelectedMons = selectedMons;
		room_goto(rm_battle);
	} else if(!battleBegin){
		room_goto(global.Save[? "lastOverworldRoom"]);
	}
}

if(!battleBegin) {
	if(alarm[0] > 0) {
		alarm[0] = 0;
	}
}