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

if(obj_battle.currentMon.isEnemy) {
	draw_set_color(c_gray);	
}

draw_text(width + padding, y + padding, fightOptions[0]);
draw_text(width + padding, y + padding + line_height, fightOptions[1]);
draw_text(width + padding, y + padding + 2 * line_height, fightOptions[2]);

var _hd = line_height * 3 + padding * 2;
draw_set_color(c_black);
draw_rectangle(width + padding, y + padding, room_width, y + _hd, true);
draw_set_color(c_yellow)
draw_line(width, y + padding + line_height * 3, room_width, y + padding + line_height * 3);
draw_set_color(c_red)
draw_line(width, y + padding + line_height * 2, room_width, y + padding + line_height * 2);
draw_set_color(c_blue)
draw_line(width, y + padding + line_height * 1, room_width, y + padding + line_height * 1);