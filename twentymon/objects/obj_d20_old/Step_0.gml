/// @desc 

if (mouse_check_button_released(mb_left)) {
	if (mouse_hover_object(id, true)) {
		rolling = true;
		image_speed = 10;
	}
}

if (rolling) {
	image_speed = approach(image_speed, 0, .05);
	if (image_speed == 0) {
		rolling = false;
		number  = roll_d20();
	}
}