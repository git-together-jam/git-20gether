/// @func twentymons_init()

#region Twentymons data
enum TwentymonType {
	fire,
	water,
	earth,
	neutral
}

enum TwentymonId {
	mon1,
	mon2
}

#region Mon 1
var _mon1 = ds_map_create();

// Base map
_mon1[? "name"] = "Mon 1";
_mon1[? "sprite"] = spr_debog;
_mon1[? "leveling_curve"] = LevelingCurve.fast;
_mon1[? "type"] = TwentymonType.fire


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 1;
_base_stats[? "max_stamina"] = 1;
_base_stats[? "strength"] = 0.25;
_base_stats[? "defense"] = 0.5;
_base_stats[? "agility"] = 0.5;

ds_map_add_map(_mon1, "stats", _base_stats);

#endregion

#region Mon 2
var _mon2 = ds_map_create();

// Base map
_mon2[? "name"] = "Mon 2";
_mon2[? "sprite"] = spr_flake;
_mon2[? "leveling_curve"] = LevelingCurve.slow;
_mon2[? "type"] = TwentymonType.earth;

// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 2;
_base_stats[? "max_stamina"] = 1;
_base_stats[? "strength"] = 0.25;
_base_stats[? "defense"] = 0.5;
_base_stats[? "agility"] = 0.5;

ds_map_add_map(_mon2, "stats", _base_stats);
#endregion

global.Twentymons = ds_map_create();
ds_map_add_map(global.Twentymons, TwentymonId.mon1, _mon1);
ds_map_add_map(global.Twentymons, TwentymonId.mon2, _mon2);
#endregion

// Party
global.PlayerParty = ds_list_create();
party_add_twentymon(TwentymonId.mon1, 1);
party_add_twentymon(TwentymonId.mon2, 1);