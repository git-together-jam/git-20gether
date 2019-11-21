if(battleBegin) {
	draw_set_font(global.MainFont);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_black);
	draw_text(room_width / 2, 25, monster_transform_string("Select Twentymons for battle"));
	if(selectedCount == 0) {
		draw_sprite_ext(spr_battle_button, 0, room_width / 2, room_height - 100, 1, 1, 0, c_gray, 1);	
	} else {
		draw_sprite(spr_battle_button, 0, room_width / 2, room_height - 100);	

	}
	
	draw_set_font(global.SmallFont);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	lineHeight = string_height("A");
	draw_set_color(c_black);
	draw_y = max((50 + room_height - ds_list_size(partyMons) * lineHeight) / 2, 50);
	for(var i = 0; i < ds_list_size(partyMons); i++) {
		var _mon = partyMons[| i];
		draw_set_color(c_black);
		if(_mon[? "selected"]) {
			draw_set_color(c_dkgray);
		}
		var _stats = _mon[? "stats"];
		var _str = monster_transform_string(_mon[? "name"]);
		draw_text(room_width / 2 + lineHeight, draw_y + lineHeight * i, _str);
			
		var _x = room_width / 2 + string_width(_str) + 50;
		var _y = draw_y + lineHeight * i - 5;
		var _hp = max(_stats[? "hp"] / _stats[? "max_hp"], 0);
		draw_rectangle(_x - 1, _y - 1, _x + 101, _y + 6, false);
		if(_hp > 0.5) {
			draw_set_color(c_lime);
		} else if(_hp > 0.15) {
			draw_set_color(c_yellow);
		} else {
			draw_set_color(c_red);
		}
		if(_hp > 0) {
			draw_rectangle(_x, _y, _x + 100 * _hp, _y + 5, false);
		}
		var _scale = lineHeight / 64;
		draw_sprite_ext(_mon[? "sprite"], 0, room_width / 2, draw_y + lineHeight * i, _scale, _scale, 0, -1, 1);
		
	}
	for(var i = 0; i < MAX_FRIENDLY_MONS; i++) {
		var _y = (room_height / (MAX_FRIENDLY_MONS + 1)) * (i + 1);
		if(selectedMons[i] != -1) {
			var _mon = partyMons[| selectedMons[i]];
			draw_sprite(_mon[? "sprite"], 0, room_width / 4, _y);
		}
		draw_sprite(spr_dotted_box, 0, room_width / 4, _y);
	}
	
	if(mouse_x > draw_x && mouse_y > draw_y - lineHeight / 2 && mouse_y < draw_y + numMons * lineHeight - lineHeight / 2) {
		var _index = floor((mouse_y - (draw_y - lineHeight / 2)) / lineHeight);
		var _mon = partyMons[| _index];
		var _stats = _mon[? "stats"];
		
		var _stamina = monster_transform_string("Stamina: " + string(_stats[?"stamina"]) + "/" + string(_stats[? "max_stamina"]));
		var _width = string_width(_stamina);
	
		draw_set_colour(c_white);
		draw_rectangle(mouse_x, mouse_y + 5, mouse_x + _width + 10, mouse_y + 85, false);
		draw_set_colour(c_black);
		draw_set_align(1);
	
		draw_text(mouse_x + 5, mouse_y + 5, monster_transform_string(_stamina));
		draw_text(mouse_x + 5, mouse_y + 20, monster_transform_string("HP: " + string(_stats[? "hp"]) + "/" + string(_stats[? "max_hp"])));
		draw_text(mouse_x + 5, mouse_y + 35, monster_transform_string("Strength: " + string(_stats[? "strength"])));
		draw_text(mouse_x + 5, mouse_y + 50, monster_transform_string("Defense: " + string(_stats[? "defense"])));
		draw_text(mouse_x + 5, mouse_y + 65, monster_transform_string("Agility: " + string(_stats[? "agility"])));
	}
	
	
} else {
	if(newMon) {
		draw_set_font(global.MainFont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_set_color(c_black);
		draw_text(room_width / 2, 25, monster_transform_string("You captured the wild Twentmon!"));
	}
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

