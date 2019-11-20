gml_pragma("global", "scr_init()");

randomize();

twentymons_init();
// Party
global.PlayerParty = ds_list_create();
party_add_twentymon(TwentymonId.mon1, 10);
party_add_twentymon(TwentymonId.mon1, 50);

global.Save = ds_map_create();
global.SelectedMons = [-1, -1];
global.EnemyMons = [];