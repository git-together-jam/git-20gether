gml_pragma("global", "scr_init()");

randomize();

/*#region Twentymons data
enum TwentymonType {
	mon1,
	mon2
}

enum TwentymonElement {
	water,
	fire,
	earth,
	neutral
}

#region Mon 1
var _mon1 = ds_map_create();
var _mon1Stats = ds_list_create();

// Base map
_mon1[? "sprite"] = spr_debog;
_mon1[? "name"] = "Mon 1";
_mon1[? "element"] = TwentymonElement.water;
ds_map_add_list(_mon1, "stats", _mon1Stats);

// Stats
var _level1 = ds_map_create();
_level1[? "max_hp"] = 20;
_level1[? "max_stamina"] = 20;
_level1[? "strength"] = 5;
_level1[? "defense"] = 10;
_level1[? "agility"] = 10;

var _level2 = ds_map_create();
_level2[? "max_hp"] = 30;
_level2[? "max_stamina"] = 30;
_level2[? "strength"] = 6;
_level2[? "defense"] = 12;
_level2[? "agility"] = 12;

ds_list_add(_mon1Stats, _level1, _level2);
#endregion

#region Mon 2
var _mon2 = ds_map_create();
var _mon2Stats = ds_list_create();

// Base map
_mon2[? "sprite"] = spr_debog;
_mon2[? "name"] = "Mon 2";
_mon2[? "element"] = TwentymonElement.neutral;
ds_map_add_list(_mon2, "stats", _mon2Stats);

// Stats
var _level1 = ds_map_create();
_level1[? "max_hp"] = 40;
_level1[? "max_stamina"] = 40;
_level1[? "strength"] = 5;
_level1[? "defense"] = 10;
_level1[? "agility"] = 10;

var _level2 = ds_map_create();
_level2[? "max_hp"] = 50;
_level2[? "max_stamina"] = 50;
_level2[? "strength"] = 6;
_level2[? "defense"] = 12;
_level2[? "agility"] = 12;

ds_list_add(_mon2Stats, _level1, _level2);
#endregion

global.Twentymons = ds_list_create();
ds_list_add_map(global.Twentymons, _mon1);
ds_list_add_map(global.Twentymons, _mon2);
#endregion

// Party
global.PlayerParty = ds_list_create();
party_add_twentymon(TwentymonType.mon1, 1);
party_add_twentymon(TwentymonType.mon1, 2);*/
twentymons_init()
