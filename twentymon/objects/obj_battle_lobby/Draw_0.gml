if(battleBegin) {
	draw_set_font(global.MainFont);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width / 2, 25, monster_transform_string("Select Twentymons for battle"));
	draw_sprite(spr_battle_button, 0, room_width / 2, room_height - 100);
	draw_set_font(global.SmallFont);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	lineHeight = string_height("A");
	draw_set_color(c_black);
	draw_y = max((50 + room_height - ds_list_size(partyMons) * lineHeight) / 2, 50);
	for(var i = 0; i < ds_list_size(partyMons); i++) {
		var _mon = partyMons[| i];
		if(!_mon[? "selected"]) {
			var _stats = _mon[? "stats"];
			var _str = monster_transform_string(_mon[? "name"] + ", |HP: " + string(_stats[? "hp"]) + "/" + string(_stats[? "max_hp"]));
			draw_text(room_width / 2 + lineHeight, draw_y + lineHeight * i, _str);
			var _scale = lineHeight / 64;
			draw_sprite_ext(_mon[? "sprite"], 0, room_width / 2, draw_y + lineHeight * i, _scale, _scale, 0, -1, 1);
		}
	}
	for(var i = 0; i < MAX_FRIENDLY_MONS; i++) {
		var _y = (room_height / (MAX_FRIENDLY_MONS + 1)) * (i + 1);
		if(selectedMons[i] != -1) {
			var _mon = partyMons[| selectedMons[i]];
			draw_sprite(_mon[? "sprite"], 0, room_width / 4, _y);
		}
		draw_sprite(spr_dotted_box, 0, room_width / 4, _y);
	}
	
	
} else {
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(global.SmallFont);
	draw_set_color(c_black);
	for(var i = 0; i < array_length_1d(xpGained); i++) {
		var _mon = instance_find(obj_player_mon, i);
		if(alarm[0] > 0) {
			var _str = monster_transform_string("+ " + string(xpGained[i]) + " |XP");
			draw_text(_mon.x, _mon.y + 40, _str);
		} else if(alarm[1] > 0 && leveledUp[i]) {
			var _str = monster_transform_string(_mon.name + " grew to level " + string(_mon.level + 1));
			draw_text(_mon.x, _mon.y + 40, _str);
		}
	}
	draw_sprite(spr_battle_button, 1, room_width / 2, room_height - 100);
}

