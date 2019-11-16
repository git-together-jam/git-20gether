gml_pragma("global", "scr_init()");

randomize();

// Twentymons data
enum TwentymonType {
	test,
	test2
}

// Test
var _testMap = ds_map_create();

_testMap[? "hp"] = 20;
_testMap[? "stamina"] = 20;
_testMap[? "strength"] = 5;
_testMap[? "defense"] = 10;
_testMap[? "agility"] = 10;

// Test2
var _test2Map = ds_map_create();

_test2Map[? "hp"] = 20;
_test2Map[? "stamina"] = 30;
_test2Map[? "strength"] = 5;
_test2Map[? "defense"] = 5;
_test2Map[? "agility"] = 20;

global.TwentymonList = ds_list_create();
ds_list_add_map(global.TwentymonList, _testMap);
ds_list_add_map(global.TwentymonList, _test2Map);