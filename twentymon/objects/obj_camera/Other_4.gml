/// @desc Enable the view
view_enabled = true;
view_visible[0] = true;

if (room == rm_battle) {
	view_width = 640;
	view_height = 480;
} else {
	view_width = overworld_view_width;
	view_height = overworld_view_height;
}

surface_resize(application_surface, view_width, view_height);