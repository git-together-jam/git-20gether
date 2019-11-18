var _cam = camera_get_active()
var _view_width = camera_get_view_width(_cam);
var _view_height = camera_get_view_height(_cam);

width = _view_width * 0.5;
height = 100;
padding = 10;

show_prompt = false;
has_question = false;
selected_index = -1;
cursor_index = 0;

ready = true;

x = width / 2; // center in room
y = _view_height - height; // pin to bottom

visible = false;
