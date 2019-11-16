/// @description get_tile_mask
/// @arg x
/// @arg y

var _x = argument0;
var _y = argument1;

if (_x < 0 || _x > room_width) return Tile_Col.SOLID;
if (_y < 0 || _y > room_height) return Tile_Col.SOLID;

var _map_id = global.tileColLayerMapID;

var _mx = tilemap_get_cell_x_at_pixel(_map_id, _x, _y);
var _my = tilemap_get_cell_y_at_pixel(_map_id, _x, _y);
var _data = tilemap_get(_map_id, _mx, _my);
//show_debug_message(_data);
return _data;