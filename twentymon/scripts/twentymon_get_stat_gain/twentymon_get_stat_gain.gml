/// @func twentymon_get_stats_gain(type, ?count)
/// @arg type
/// @arg ?count

var _type = argument[0];
var _mon = global.Twentymons[? _type];
var _count = 1;
if(argument_count > 1) {
	var _count = argument[1];	
}
var _base_stats = _mon[? "stats"];

var _stats = ds_map_create();
ds_map_set(_stats, "strength", round((_base_stats[? "strength"] + random(1)) * _count));
ds_map_set(_stats, "defense", round((_base_stats[? "defense"] + random(1)) * _count));
ds_map_set(_stats, "agility", round((_base_stats[? "agility"] + random(1)) * _count));
ds_map_set(_stats, "max_hp", round((_base_stats[? "max_hp"] + random(1)) * _count));
ds_map_set(_stats, "max_stamina", round((_base_stats[? "max_stamina"] + random(1)) * _count));


return _stats;