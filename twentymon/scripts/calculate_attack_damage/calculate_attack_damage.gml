/// @func calculate_attack_damage()

var _elemental_bonus = 1;

if(
	   currentMon.element == TwentymonType.earth && targetMon.element == TwentymonType.water
	|| currentMon.element == TwentymonType.water && targetMon.element == TwentymonType.fire
	|| currentMon.element == TwentymonType.fire  && targetMon.element == TwentymonType.earth
) {
	_elemental_bonus = 2;
} else if(
	   currentMon.element == TwentymonType.water && targetMon.element == TwentymonType.earth
	|| currentMon.element == TwentymonType.fire  && targetMon.element == TwentymonType.water
	|| currentMon.element == TwentymonType.earth && targetMon.element == TwentymonType.fire

) {
	_elemental_bonus = 0.5;
}
var _elemental_attack = round(currentMon.strength * _elemental_bonus);

var _dmg = max(attackRoll + _elemental_attack - defenseRoll - targetMon.defense, 0);
return _dmg;