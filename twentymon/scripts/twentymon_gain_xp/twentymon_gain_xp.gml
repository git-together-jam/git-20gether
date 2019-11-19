/// twentymon_gain_xp(mon, defeated)
/// @arg mon
/// @arg defeated

var _mon = argument0;
var _defeated = argument1;
// gain more xp for defeating a mon with a type advantage & a higher level
var _advantage = twentymon_element_matchup(_defeated.element, _mon.element);
var _level_differece = _defeated.level - _mon.level;

// scale type advantage closer to 1
var _multiplier = (_advantage + 1) / 2;

return max(_defeated.level * 40 + _level_differece * 10, 0) * _multiplier;