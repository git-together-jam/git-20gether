/// @desc Init battle

// Positioning
battleY = 240;
boardline = 300;

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
current_mon = noone;
current_action = -1;
action_target = noone;

enemies = [];
fighters = [];