/// @func calculate_attack_damage(current, target)

var _current = argument0;
var _target = argument1;

var _elemental_attack = round(_current.strength * twentymon_element_matchup(_current.element, _target.element));

var _dmg = max(attackRoll + _elemental_attack - defenseRoll - _target.defense, 0);
return _dmg;