/// @func calculate_attack_damage()

var _elemental_attack = round(currentMon.strength * twentymon_element_matchup(currentMon.element, targetMon.element));

var _dmg = max(attackRoll + _elemental_attack - defenseRoll - targetMon.defense, 0);
return _dmg;