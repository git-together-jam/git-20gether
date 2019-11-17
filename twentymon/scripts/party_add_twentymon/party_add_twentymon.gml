/// @func party_add_twentymon(type, level)
/// @arg type
/// @arg level
var _type = argument0;
var _level = argument1;

var _mon = ds_map_create();

// Base map
_mon[? "type"] = _type;
_mon[? "level"] = _level;

var _mon_data = global.Twentymons[? _type];
var _leveling_curve = _mon_data[? "leveling_curve"];
var _level3 = power(_level, 3);

if(_leveling_curve == LevelingCurve.fast) {
	_mon[? "xp"] = _level3 * 4/5;
} else if(_leveling_curve == LevelingCurve.medium) {
	_mon[? "xp"] = _level3;
} else {
	_mon[? "xp"] = _level3 * 5/4;
}

// Stats
var _stats = twentymon_get_stat_gain(_type, _level);

_stats[? "hp"] = _stats[? "max_hp"];
_stats[? "stamina"] = _stats[? "max_stamina"];

ds_map_add_map(_mon, "stats", _stats);
// Add the twentymon map to the party
ds_list_add_map(global.PlayerParty, _mon);