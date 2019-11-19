/// @func twentymons_init()

enum TwentymonType {
	water,
	fire,
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
_mon1[? "sprite"] = spr_debog;
_mon1[? "name"] = "Mon 1";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.fire


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 5;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 2;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Mon 2
var _mon2 = ds_map_create();

// Base map
_mon2[? "sprite"] = spr_flake;
_mon2[? "name"] = "Mon 2";
_mon2[? "leveling_curve"] = LevelingCurve.medium;
_mon2[? "type"] = TwentymonType.earth;

// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 40;
_base_stats[? "max_stamina"] = 40;
_base_stats[? "strength"] = 5;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 2;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon2, "base_stats", _base_stats);
ds_map_add_map(_mon2, "stat_gains", _stat_gains);

#endregion

global.Twentymons = ds_map_create();
ds_map_add_map(global.Twentymons, TwentymonId.mon1, _mon1);
ds_map_add_map(global.Twentymons, TwentymonId.mon2, _mon2);