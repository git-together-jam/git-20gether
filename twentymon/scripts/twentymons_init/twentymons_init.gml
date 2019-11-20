/// @func twentymons_init()

enum TwentymonType {
	water,
	fire,
	earth,
	neutral
}

enum TwentymonId {
	gitto,
	nostalgia,
	aseprite,
	statue,
	uno,
	doubleDont,
	html5,
	waterDrop,
	hydrant,
	sahaun,
	iceCream,
	penguin,
	flowerPot,
	tree,
	toothPlant,
	mountain,
	flame,
	yosi,
	fireHeart,
	fireStud,
}

#region Gitto Mon
var _gitto = ds_map_create();

// Base map
_gitto[? "sprite"] = spr_gitto_mon;
_gitto[? "name"] = "Gitto Mon";
_gitto[? "leveling_curve"] = LevelingCurve.medium;
_gitto[? "type"] = TwentymonType.neutral;


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

ds_map_add_map(_gitto, "base_stats", _base_stats);
ds_map_add_map(_gitto, "stat_gains", _stat_gains);

#endregion

#region Nostalgia Mon
var _nostalgia = ds_map_create();

// Base map
_nostalgia[? "sprite"] = spr_old_gm_mon;
_nostalgia[? "name"] = "Nostalgia Mon";
_nostalgia[? "leveling_curve"] = LevelingCurve.medium;
_nostalgia[? "type"] = TwentymonType.neutral;


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

ds_map_add_map(_nostalgia, "base_stats", _base_stats);
ds_map_add_map(_nostalgia, "stat_gains", _stat_gains);

#endregion

#region Aseprito
var _aseprite = ds_map_create();

// Base map
_aseprite[? "sprite"] = spr_aseprite_mon;
_aseprite[? "name"] = "Aseprito";
_aseprite[? "leveling_curve"] = LevelingCurve.medium;
_aseprite[? "type"] = TwentymonType.neutral;


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

ds_map_add_map(_aseprite, "base_stats", _base_stats);
ds_map_add_map(_aseprite, "stat_gains", _stat_gains);

#endregion

#region Boring Statue
var _statue = ds_map_create();

// Base map
_statue[? "sprite"] = spr_statue_mon;
_statue[? "name"] = "Boring Statue";
_statue[? "leveling_curve"] = LevelingCurve.medium;
_statue[? "type"] = TwentymonType.neutral;


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

ds_map_add_map(_statue, "base_stats", _base_stats);
ds_map_add_map(_statue, "stat_gains", _stat_gains);

#endregion

#region No-U Mon
var _uno = ds_map_create();

// Base map
_uno[? "sprite"] = spr_uno_mon;
_uno[? "name"] = "No-U Card";
_uno[? "leveling_curve"] = LevelingCurve.medium;
_uno[? "type"] = TwentymonType.neutral;


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

ds_map_add_map(_uno, "base_stats", _base_stats);
ds_map_add_map(_uno, "stat_gains", _stat_gains);

#endregion

#region Double Don't Mon
var _doubleDont = ds_map_create();

// Base map
_doubleDont[? "sprite"] = spr_double_dont_mon;
_doubleDont[? "name"] = "Double Don't Mon";
_doubleDont[? "leveling_curve"] = LevelingCurve.medium;
_doubleDont[? "type"] = TwentymonType.neutral;


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

ds_map_add_map(_doubleDont, "base_stats", _base_stats);
ds_map_add_map(_doubleDont, "stat_gains", _stat_gains);

#endregion

#region Html5 Mon
var _html5 = ds_map_create();

// Base map
_html5[? "sprite"] = spr_html5_mon;
_html5[? "name"] = "Html5 Mon";
_html5[? "leveling_curve"] = LevelingCurve.medium;
_html5[? "type"] = TwentymonType.neutral;


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

ds_map_add_map(_html5, "base_stats", _base_stats);
ds_map_add_map(_html5, "stat_gains", _stat_gains);

#endregion

#region Water Droplet
var _waterDrop = ds_map_create();

// Base map
_waterDrop[? "sprite"] = spr_waterdrop_mon;
_waterDrop[? "name"] = "Water Droplet";
_waterDrop[? "leveling_curve"] = LevelingCurve.medium;
_waterDrop[? "type"] = TwentymonType.water;


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

ds_map_add_map(_waterDrop, "base_stats", _base_stats);
ds_map_add_map(_waterDrop, "stat_gains", _stat_gains);

#endregion

#region Hydranto
var _hydrant = ds_map_create();

// Base map
_hydrant[? "sprite"] = spr_hydrant_mon;
_hydrant[? "name"] = "Hydranto";
_hydrant[? "leveling_curve"] = LevelingCurve.medium;
_hydrant[? "type"] = TwentymonType.water;


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

ds_map_add_map(_hydrant, "base_stats", _base_stats);
ds_map_add_map(_hydrant, "stat_gains", _stat_gains);

#endregion

#region Sohomeone
var _sahaun = ds_map_create();

// Base map
_sahaun[? "sprite"] = spr_sahaun_mon;
_sahaun[? "name"] = "Sohomeone";
_sahaun[? "leveling_curve"] = LevelingCurve.medium;
_sahaun[? "type"] = TwentymonType.water;


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

ds_map_add_map(_sahaun, "base_stats", _base_stats);
ds_map_add_map(_sahaun, "stat_gains", _stat_gains);

#endregion

#region Happy Ice Cream
var _iceCream = ds_map_create();

// Base map
_iceCream[? "sprite"] = spr_icecream_mon;
_iceCream[? "name"] = "Happy Ice Cream";
_iceCream[? "leveling_curve"] = LevelingCurve.medium;
_iceCream[? "type"] = TwentymonType.water;


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

ds_map_add_map(_iceCream, "base_stats", _base_stats);
ds_map_add_map(_iceCream, "stat_gains", _stat_gains);

#endregion

#region Ice Penguin
var _penguin = ds_map_create();

// Base map
_penguin[? "sprite"] = spr_penguin_mon;
_penguin[? "name"] = "Pengiun";
_penguin[? "leveling_curve"] = LevelingCurve.medium;
_penguin[? "type"] = TwentymonType.water;


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

ds_map_add_map(_penguin, "base_stats", _base_stats);
ds_map_add_map(_penguin, "stat_gains", _stat_gains);

#endregion

#region Flower Pot
var _flowerPot = ds_map_create();

// Base map
_flowerPot[? "sprite"] = spr_flowerpot_mon;
_flowerPot[? "name"] = "Flower Pot";
_flowerPot[? "leveling_curve"] = LevelingCurve.medium;
_flowerPot[? "type"] = TwentymonType.earth;


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

ds_map_add_map(_flowerPot, "base_stats", _base_stats);
ds_map_add_map(_flowerPot, "stat_gains", _stat_gains);

#endregion

#region Chill tree
var _tree = ds_map_create();

// Base map
_tree[? "sprite"] = spr_tree_mon;
_tree[? "name"] = "Chill Tree";
_tree[? "leveling_curve"] = LevelingCurve.medium;
_tree[? "type"] = TwentymonType.earth;


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

ds_map_add_map(_tree, "base_stats", _base_stats);
ds_map_add_map(_tree, "stat_gains", _stat_gains);

#endregion

#region Tooth Plant
var _toothPlant = ds_map_create();

// Base map
_toothPlant[? "sprite"] = spr_toothplant_mon;
_toothPlant[? "name"] = "Tooth Plant";
_toothPlant[? "leveling_curve"] = LevelingCurve.medium;
_toothPlant[? "type"] = TwentymonType.earth;


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

ds_map_add_map(_toothPlant, "base_stats", _base_stats);
ds_map_add_map(_toothPlant, "stat_gains", _stat_gains);

#endregion

#region Mountain Face
var _mountain = ds_map_create();

// Base map
_mountain[? "sprite"] = spr_mountain_mon;
_mountain[? "name"] = "Mountain Face";
_mountain[? "leveling_curve"] = LevelingCurve.medium;
_mountain[? "type"] = TwentymonType.earth;


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

ds_map_add_map(_mountain, "base_stats", _base_stats);
ds_map_add_map(_mountain, "stat_gains", _stat_gains);

#endregion

#region Tiny Little Flame
var _flame = ds_map_create();

// Base map
_flame[? "sprite"] = spr_flame_mon;
_flame[? "name"] = "Tiny Little Flame";
_flame[? "leveling_curve"] = LevelingCurve.medium;
_flame[? "type"] = TwentymonType.fire;


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

ds_map_add_map(_flame, "base_stats", _base_stats);
ds_map_add_map(_flame, "stat_gains", _stat_gains);

#endregion

#region Yosimon
var _yosi = ds_map_create();

// Base map
_yosi[? "sprite"] = spr_yosi_mon;
_yosi[? "name"] = "Yosimon";
_yosi[? "leveling_curve"] = LevelingCurve.medium;
_yosi[? "type"] = TwentymonType.fire;


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

ds_map_add_map(_yosi, "base_stats", _base_stats);
ds_map_add_map(_yosi, "stat_gains", _stat_gains);

#endregion

#region Fire Heart
var _fireHeart = ds_map_create();

// Base map
_fireHeart[? "sprite"] = spr_fireheart_mon;
_fireHeart[? "name"] = "Fire Heart";
_fireHeart[? "leveling_curve"] = LevelingCurve.medium;
_fireHeart[? "type"] = TwentymonType.fire;


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

ds_map_add_map(_fireHeart, "base_stats", _base_stats);
ds_map_add_map(_fireHeart, "stat_gains", _stat_gains);

#endregion

#region Fire Stud
var _fireStud = ds_map_create();

// Base map
_fireStud[? "sprite"] = spr_firestud_mon;
_fireStud[? "name"] = "Fire Stud";
_fireStud[? "leveling_curve"] = LevelingCurve.medium;
_fireStud[? "type"] = TwentymonType.fire;


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

ds_map_add_map(_fireStud, "base_stats", _base_stats);
ds_map_add_map(_fireStud, "stat_gains", _stat_gains);

#endregion

global.Twentymons = ds_map_create();

ds_map_add_map(global.Twentymons, TwentymonId.aseprite, _aseprite);
ds_map_add_map(global.Twentymons, TwentymonId.uno, _uno);
ds_map_add_map(global.Twentymons, TwentymonId.doubleDont, _doubleDont);
ds_map_add_map(global.Twentymons, TwentymonId.gitto, _gitto);
ds_map_add_map(global.Twentymons, TwentymonId.html5, _html5);
ds_map_add_map(global.Twentymons, TwentymonId.nostalgia, _nostalgia);
ds_map_add_map(global.Twentymons, TwentymonId.statue, _statue);

ds_map_add_map(global.Twentymons, TwentymonId.waterDrop, _waterDrop);
ds_map_add_map(global.Twentymons, TwentymonId.penguin, _penguin);
ds_map_add_map(global.Twentymons, TwentymonId.sahaun, _sahaun);
ds_map_add_map(global.Twentymons, TwentymonId.hydrant, _hydrant);
ds_map_add_map(global.Twentymons, TwentymonId.iceCream, _iceCream);

ds_map_add_map(global.Twentymons, TwentymonId.flowerPot, _flowerPot);
ds_map_add_map(global.Twentymons, TwentymonId.toothPlant, _toothPlant);
ds_map_add_map(global.Twentymons, TwentymonId.tree, _tree);
ds_map_add_map(global.Twentymons, TwentymonId.mountain, _mountain);

ds_map_add_map(global.Twentymons, TwentymonId.flame, _flame);
ds_map_add_map(global.Twentymons, TwentymonId.yosi, _yosi);
ds_map_add_map(global.Twentymons, TwentymonId.fireHeart, _fireHeart);
ds_map_add_map(global.Twentymons, TwentymonId.fireStud, _fireStud);