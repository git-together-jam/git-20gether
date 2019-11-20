gml_pragma("global", "scr_init()");

randomize();

twentymons_init();
// Party
global.PlayerParty = ds_list_create();
party_add_twentymon(TwentymonId.statue, 2);
party_add_twentymon(TwentymonId.gitto, 1);
party_add_twentymon(TwentymonId.flame, 1);

global.Save = ds_map_create();
global.SelectedMons = [-1, -1];
global.EnemyMons = [];