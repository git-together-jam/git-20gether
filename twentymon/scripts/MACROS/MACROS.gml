#macro mouse_x_gui device_mouse_x(0)
#macro mouse_y_gui device_mouse_y(0)

// Tile Specific
#macro tile_size 20
#macro tile_move_spd 2 

// Keys
#macro KEY_UP keyboard_check(ord("W")) || keyboard_check(vk_up) 
#macro KEY_DOWN keyboard_check(ord("S")) || keyboard_check(vk_down) 
#macro KEY_LEFT keyboard_check(ord("A")) || keyboard_check(vk_left) 
#macro KEY_RIGHT keyboard_check(ord("D")) || keyboard_check(vk_right) 