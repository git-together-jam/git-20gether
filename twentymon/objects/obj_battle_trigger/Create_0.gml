/// @desc Init
dead = false;
var _num = irandom_range(1, 3);
enemyMons = [[irandom(19), irandom_range(1, 3)]];
if (_num >= 2) enemyMons[1] = [irandom(19), irandom_range(1, 3)];
if (_num == 3) enemyMons[2] = [irandom(19), irandom_range(1, 3)];
