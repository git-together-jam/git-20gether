/// @desc Init battle

// Positioning
battleY = floor(room_height * .5);
boardline = floor(room_height * .75);

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

enemies = [];
fighters = [];
