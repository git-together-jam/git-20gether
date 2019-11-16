/// @desc Draw menu items in a loop
draw_set_valign(fa_center);
for (var i = 0; i < array_length_1d(menuItems); i++) {
    draw_text((room_width / 2) - 48, (room_height / 2) + (i * 48), menuItems[i]);
}
draw_set_valign(fa_top);