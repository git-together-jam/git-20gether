/// @desc Keep track of stat changes.

var _mon = global.PlayerParty[| partyIndex];
var _level = twentymon_get_level(_mon);
_mon[? "xp"] += xp_gained;
_mon[? "hp"] = hp;
_mon[? "stamina"] = stamina;

var _new_level = twentymon_get_level(_mon);

if(_new_level > _level) {
	var _stat_gain = twentymon_get_stat_gain(_mon[? "ID"]);
	var _stats = _mon[? "stats"];
	
	_stats[? "max_hp"] += _stat_gain[? "max_hp"];
	_stats[? "max_stamina"] += _stat_gain[? "max_stamina"];
	_stats[? "strength"] += _stat_gain[? "strength"];
	_stats[? "defense"] += _stat_gain[? "defense"];
	_stats[? "agility"] += _stat_gain[? "agility"];
	_stats[? "hp"] += _stat_gain[? "max_hp"];
	_stats[? "stamina"] += _stat_gain[? "max_stamina"];
	
	ds_map_destroy(_stat_gain);
}

