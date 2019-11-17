/// @func calculate_attack_damage()
var _dmg = max(attackRoll + currentMon.strength - defenseRoll - targetMon.defense, 0);
return _dmg;