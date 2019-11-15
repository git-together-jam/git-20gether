/// @description get_col
/// @param sprite

var _spr = argument0;

switch(_spr) {
	case mask: return col.SOLID; break;
	case mask_jump: return col.JUMP; break;
	case mask_one_right: return col.ONE_RIGHT; break;
	case mask_one_left: return col.ONE_LEFT; break;
	case mask_one_up: return col.ONE_UP; break;
	case mask_one_down: return col.ONE_DOWN; break;
	default: return col.SOLID; break;
}