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

#region Gitto Mon
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_gitto_mon;
_mon1[? "name"] = "Gitto Mon";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.neutral;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Nostalgia Mon
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_old_gm_mon;
_mon1[? "name"] = "Nostalgia Mon";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.neutral;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Aseprito
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_aseprite_mon;
_mon1[? "name"] = "Aseprito";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.neutral;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Boring Statue
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_statue_mon;
_mon1[? "name"] = "Boring Statue";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.neutral;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region No-U Mon
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_uno_mon;
_mon1[? "name"] = "No-U Card";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.neutral;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Double Don't Mon
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_double_dont_mon;
_mon1[? "name"] = "Double Don't Mon";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.neutral;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Html5 Mon
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_html5_mon;
_mon1[? "name"] = "Html5 Mon";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.neutral;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Water Droplet
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_waterdrop_mon;
_mon1[? "name"] = "Water Droplet";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.water;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Hydranto
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_hydrant_mon;
_mon1[? "name"] = "Hydranto";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.water;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Sohomeone
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_sahaun_mon;
_mon1[? "name"] = "Sohomeone";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.water;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Happy Ice Cream
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_icecream_mon;
_mon1[? "name"] = "Happy Ice Cream";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.water;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Ice Penguin
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_penguin_mon;
_mon1[? "name"] = "Pengiun";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.water;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Flower Pot
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_flowerpot_mon;
_mon1[? "name"] = "Flower Pot";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.earth;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Chill tree
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_tree_mon;
_mon1[? "name"] = "Chill Tree";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.earth;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Tooth Plant
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_toothplant_mon;
_mon1[? "name"] = "Tooth Plant";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.earth;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Mountain Face
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_mountain_mon;
_mon1[? "name"] = "Mountain Face";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.earth;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Tiny Little Flame
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_flame_mon;
_mon1[? "name"] = "Tiny Little Flame";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.fire;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Yosimon
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_yosi_mon;
_mon1[? "name"] = "Yosimon";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.fire;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Fire Heart
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_fireheart_mon;
_mon1[? "name"] = "Fire Heart";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.fire;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

#region Fire Stud
var _mon1 = ds_map_create();

// Base map
_mon1[? "sprite"] = spr_firestud_mon;
_mon1[? "name"] = "Fire Stud";
_mon1[? "leveling_curve"] = LevelingCurve.medium;
_mon1[? "type"] = TwentymonType.fire;


// Stats
var _base_stats = ds_map_create();
_base_stats[? "max_hp"] = 20;
_base_stats[? "max_stamina"] = 20;
_base_stats[? "strength"] = 10;
_base_stats[? "defense"] = 5;
_base_stats[? "agility"] = 10;

var _stat_gains = ds_map_create();
_stat_gains[? "max_hp"] = 5;
_stat_gains[? "max_stamina"] = 5;
_stat_gains[? "strength"] = 2;
_stat_gains[? "defense"] = 2;
_stat_gains[? "agility"] = 2;

ds_map_add_map(_mon1, "base_stats", _base_stats);
ds_map_add_map(_mon1, "stat_gains", _stat_gains);

#endregion

global.Twentymons = ds_map_create();
ds_map_add_map(global.Twentymons, TwentymonId.mon1, _mon1);
ds_map_add_map(global.Twentymons, TwentymonId.mon2, _mon2);