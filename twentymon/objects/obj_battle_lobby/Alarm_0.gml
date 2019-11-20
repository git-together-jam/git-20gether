/// @description Add XP to mons

for(var i = 0; i < array_length_1d(global.SelectedMons); i++) {
	var _mon = global.PlayerParty[| i];
	var _level = twentymon_get_level(_mon);
	_mon[? "xp"] += _mon[? "xp_gained"];
	xpGained[i] = _mon[? "xp_gained"];
	_mon[? "xp_gained"] = 0;
	var _new_level = twentymon_get_level(_mon);
	if(_new_level != _level) {
		leveledUp[i] = true;
		alarm[1] = room_speed / 2;
		var _stat_gain = twentymon_get_stat_gain(_mon[? "ID"]);
		var _stats = _mon[? "stats"];
		_stats[? "max_hp"] += _stat_gain[? "max_hp"];
		_stats[? "hp"] += _stat_gain[? "max_hp"];
		_stats[? "max_stamina"] += _stat_gain[? "max_stamina"];
		_stats[? "stamina"] += _stat_gain[? "max_stamina"];
		_stats[? "strength"] += _stat_gain[? "strength"];
		_stats[? "defense"] += _stat_gain[? "defense"];
		_stats[? "agility"] += _stat_gain[? "agility"];
	}
}