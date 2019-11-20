/// @func party_add_twentymon(ID, level)
/// @arg ID
/// @arg level
var _id = argument0;
var _level = argument1;

var _mon = ds_map_create();

// Base map
_mon[? "ID"] = _id;
_mon[? "level"] = _level;

var _mon_data = global.Twentymons[? _id];
var _leveling_curve = _mon_data[? "leveling_curve"];
var _level3 = power(_level, 3);

if(_leveling_curve == LevelingCurve.fast) {
	_mon[? "xp"] = _level3 * 4/5;
} else if(_leveling_curve == LevelingCurve.medium) {
	_mon[? "xp"] = _level3;
} else {
	_mon[? "xp"] = _level3 * 5/4;
}

_mon[? "xp_gained"] = 0;

// Stats
var _stats = ds_map_create();
ds_map_copy(_stats, _mon_data[? "base_stats"]);
var _stat_gain = twentymon_get_stat_gain(_id, _level - 1);

_stats[? "max_hp"] += _stat_gain[? "max_hp"];
_stats[? "max_stamina"] += _stat_gain[? "max_stamina"];
_stats[? "strength"] += _stat_gain[? "strength"];
_stats[? "defense"] += _stat_gain[? "defense"];
_stats[? "agility"] += _stat_gain[? "agility"];
_stats[? "hp"] = _stats[? "max_hp"];
_stats[? "stamina"] = _stats[? "max_stamina"];

ds_map_add_map(_mon, "stats", _stats);

// Add the twentymon map to the party
ds_list_add_map(global.PlayerParty, _mon);