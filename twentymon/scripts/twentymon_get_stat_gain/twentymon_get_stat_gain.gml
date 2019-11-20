/// @func twentymon_get_stats_gain(ID, ?count)
/// @arg ID
/// @arg ?count

var _id = argument[0];
var _mon_data = global.Twentymons[? _id];
var _count = 1;
if(argument_count > 1) {
	var _count = argument[1]
}
var _stat_gains = _mon_data[? "stat_gains"];

var _stats = ds_map_create();
_stats[? "max_hp"] = 0;
_stats[? "max_stamina"] = 0;
_stats[? "strength"] = 0;
_stats[? "defense"] = 0;
_stats[? "agility"] = 0;

repeat(_count) {
	_stats[? "max_hp"] += round(_stat_gains[? "max_hp"] + random(1));
	_stats[? "max_stamina"] += round(_stat_gains[? "max_stamina"] + random(1));
	_stats[? "strength"] += round(_stat_gains[? "strength"] + random(1));
	_stats[? "defense"] += round(_stat_gains[? "defense"] + random(1));
	_stats[? "agility"] += round(_stat_gains[? "agility"] + random(1));
}
return _stats;