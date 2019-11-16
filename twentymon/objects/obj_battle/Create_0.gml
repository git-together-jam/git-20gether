/// @desc Init battle

timer = 0;

battleY = 240;
boardline = 300;
twentymonSpeed = 2; // animation speed

goodpoke = instance_create_layer(-100, battleY, "Battle_Field", obj_goodpoke);
badpoke = instance_create_layer(room_width + 100, battleY, "Battle_Field", obj_goodpoke);

battleState = BattleStates.start;
previousState = -1;
nextState = -1; // for die rolls

dieResult = -1; // for die rolls