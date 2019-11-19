/// @description Draw stats on mouse hover
draw_set_font(obj_battle.font);
if(state != BattleMonState.idle) {
	var texture = sprite_get_texture(sprite_index, 0);
	var h = texture_get_texel_height(texture);
	var w = texture_get_texel_width(texture);
	shader_set(shd_outline);
	shader_set_uniform_f(pixelWidthRef, w);
	shader_set_uniform_f(pixelHeightRef, h);
	var _borderColor = twentymon_get_outline(state);
	shader_set_uniform_f(outlineColorRef, _borderColor[0], _borderColor[1], _borderColor[2], 1);
	draw_self();
	shader_reset();
} else {
	draw_self();
}

if(deltaHP > 0) {
	hp --;
	deltaHP --;
}
if(hp <= 0) {
	if(image_alpha <= 0) {
		instance_destroy();
	}
	image_alpha -= 0.05;
	image_xscale -= 0.03;
	image_yscale -= 0.03;
	image_angle += 4;
} else {
	// Draw health bar
	draw_set_color(c_black);
	var _x = x - 50;
	var _y = y + (sprite_height / 2 + 20) * (isEnemy ? -1 : 1);
	var _hp = max(hp / max_hp, 0);
	draw_rectangle(_x - 1, _y - 1, _x + 101, _y + 6, false);
	if(_hp > 0.5) {
		draw_set_color(c_lime);
	} else if(_hp > 0.15) {
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_red);
	}
	draw_rectangle(_x, _y, _x + 100 * _hp, _y + 5, false);
}

// Draw stats on hover
if (mouse_hover_object(id)) {
	draw_set_font(global.SmallFont);
	var _stamina = monster_transform_string("Stamina: " + string(stamina) + "/" + string(max_stamina));
	var _width = string_width(_stamina);
	
	draw_set_colour(c_white);
	draw_rectangle(mouse_x, mouse_y + 5, mouse_x + _width + 10, mouse_y + 85, false);
	draw_set_colour(c_black);
	draw_set_align(1);
	
	draw_text(mouse_x + 5, mouse_y + 5, monster_transform_string(_stamina));
	draw_text(mouse_x + 5, mouse_y + 20, monster_transform_string("HP: " + string(hp) + "/" + string(max_hp)));
	draw_text(mouse_x + 5, mouse_y + 35, monster_transform_string("Strength: " + string(strength)));
	draw_text(mouse_x + 5, mouse_y + 50, monster_transform_string("Defense: " + string(defense)));
	draw_text(mouse_x + 5, mouse_y + 65, monster_transform_string("Agility: " + string(agility)));
}

