/// @desc Init camera
overworld_view_width = 640/2;
overworld_view_height = 480/2;

view_width = overworld_view_width;
view_height = overworld_view_height;

window_scale = 2;

window_set_size(view_width * window_scale, view_height * window_scale);
surface_resize(application_surface, view_width, view_height);

alarm[0] = 1;

follow_target = obj_player;
snap = true;