/// @description Draw stats on mouse hover
draw_self();

if (mouse_hover_object(id)) {
	draw_set_colour(c_black);
	draw_set_align(1);
	draw_text(5, 5, "Stamina: " + string(stamina) + "/" + string(max_stamina));
	draw_text(5, 20, "HP: " + string(hp) + "/" + string(max_hp));
	draw_text(5, 35, "Strength: " + string(strength));
	draw_text(5, 50, "Defense: " + string(defense));
	draw_text(5, 65, "Agility: " + string(agility));
}