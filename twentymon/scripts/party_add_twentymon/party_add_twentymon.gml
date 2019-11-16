/// @func party_add_twentymon(type, level)
/// @arg type
/// @arg level
var _type = argument0;
var _level = argument1;

var _mon = ds_map_create();
var _stats = ds_map_create();

// Base map
_mon[? "type"] = _type;
_mon[? "level"] = _level;
ds_map_add_map(_mon, "stats", _stats);

// Stats
ds_map_copy(_stats, ds_get_nested(global.Twentymons, real(_type), "stats", _level - 1));
_stats[? "hp"] = _stats[? "max_hp"];
_stats[? "stamina"] = _stats[? "max_stamina"];

// Add the twentymon map to the party
ds_list_add_map(global.PlayerParty, _mon);