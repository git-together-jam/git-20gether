/// @description get_tile_mask
/// @arg x
/// @arg y

var _x = argument0;
var _y = argument1;

var _map_id = tileColLayerMapID;

var _mx = tilemap_get_cell_x_at_pixel(_map_id, _x, _y);
var _my = tilemap_get_cell_y_at_pixel(_map_id, _x, _y);
var _data = tilemap_get(_map_id, _mx, _my);
return _data;

/*switch(_spr) {
	case mask: return tile_col.SOLID; break;
	case mask_jump: return tile_col.JUMP; break;
	case mask_one_right: return tile_col.ONE_RIGHT; break;
	case mask_one_left: return tile_col.ONE_LEFT; break;
	case mask_one_up: return tile_col.ONE_UP; break;
	case mask_one_down: return tile_col.ONE_DOWN; break;
	default: return tile_col.AIR; break;
}