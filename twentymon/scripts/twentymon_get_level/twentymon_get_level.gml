/// @func twentymon_get_level(mon)
/// @arg mon

var _mon = argument0;
var _mon_data = global.Twentymons[? _mon[? "ID"]];
var _curve = _mon_data[? "leveling_curve"];
var _xp = _mon[? "xp"];
var _exponent = 1.0 / 3.0;
var _const = 1;

switch(_curve) {
	case LevelingCurve.fast:
		_const = 1.25;
		break;
	case LevelingCurve.slow:
		_const = 0.8;
		break;
}

var _level = floor(_const * power(_xp, _exponent));
return max(_level, 1);