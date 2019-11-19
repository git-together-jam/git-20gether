/// twentymon_element_matchup(type_one, type_two)
/// @arg type_one
/// @arg type_two

var _one = argument0;
var _two = argument1;

var _elemental_bonus = 1;

if(
	   _one == TwentymonType.earth && _two == TwentymonType.water
	|| _one == TwentymonType.water && _two == TwentymonType.fire
	|| _one == TwentymonType.fire  && _two == TwentymonType.earth
) {
	_elemental_bonus = 2;
} else if(
	   _one == TwentymonType.water && _two == TwentymonType.earth
	|| _one == TwentymonType.fire  && _two == TwentymonType.water
	|| _one == TwentymonType.earth && _two == TwentymonType.fire

) {
	_elemental_bonus = 0.5;
}

return _elemental_bonus;