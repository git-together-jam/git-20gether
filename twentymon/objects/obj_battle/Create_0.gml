/// @desc Init battle

// Positioning
battleY = floor(room_height * .35);
boardline = floor(room_height * .75);
instance_create_depth(0, 0, 200, obj_battle_dialog);
timerLength = room_speed * 1.5;

// States
battleState = BattleStates.start;
previousState = -1;

// Die rolls
dieResult = -1;
attackRoll = -1;
defenseRoll = -1;
nextState = -1;

// Priority queues for turn order
twentymon_queue = ds_priority_create();
twentymon_buffer = ds_priority_create();

// Actions
currentMon = noone;
targetMon = noone;
targetAction = -1;
waitTimer = -1;
attackStaminaCost = 3;
defendStaminaCost = 5;
defenseBoost = 3;
targetSelected = false;

enemies = global.EnemyMons;
fighters = global.SelectedMons;
event_user(0);
music = audio_play_sound(snd_batte_theme_funny, 20, true);