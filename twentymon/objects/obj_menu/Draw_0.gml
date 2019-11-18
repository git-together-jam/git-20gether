/// @desc Draw menu items in a loop
draw_set_font(global.TitleFont);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_text(room_width / 2, 64, "TWENTYMON!");
draw_set_halign(fa_left);
draw_set_font(global.MainFont);

for (var i = 0; i < array_length_1d(menuItems); i++) {
    draw_text((room_width / 2) - 48, (room_height / 2) + (i * 48), menuItems[i]);
}
draw_set_valign(fa_top);

draw_set_font(global.SmallFont);
draw_set_color(c_gray);
draw_text(8, room_height - 24, "MENU CONTROLS: ARROW KEYS AND SPACE");
draw_set_color(c_white);
draw_set_font(global.MainFont);