/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(global.MainFont);
draw_rectangle(0, y, room_width, room_height, false);
draw_set_color(c_aqua);
draw_rectangle(0, y, width, room_height, false);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

line_height = string_height(fightOptions[0]);
draw_text_ext(padding, y, message, line_height, width - padding);

optionsEnabled = [true, true, true];
if(obj_battle.currentMon.isEnemy) {
	draw_set_color(c_gray);
	optionsEnabled = [false, false, false];
}

if(obj_battle.currentMon.stamina < obj_battle.attackStaminaCost) {
	draw_set_color(c_gray);
	optionsEnabled[0] = false;
} else if(optionsEnabled[0]) {
	draw_set_color(c_black);
}
draw_text(width + padding, y + padding, fightOptions[0]);
if(obj_battle.currentMon.stamina < obj_battle.defendStaminaCost) {
	draw_set_color(c_gray);
	optionsEnabled[1] = false;
} else if(optionsEnabled[1]) {
	draw_set_color(c_black);
}
draw_text(width + padding, y + padding + line_height, fightOptions[1]);
if(optionsEnabled[2]) {
	draw_set_color(c_black);
}
draw_text(width + padding, y + padding + 2 * line_height, fightOptions[2]);