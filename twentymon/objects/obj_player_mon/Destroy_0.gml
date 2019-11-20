/// @desc Keep track of stat changes.
if(room == rm_battle) {
	var _mon = global.PlayerParty[| partyIndex];
	_mon[? "xp_gained"] = xp_gained;
	var _stats = _mon[? "stats"];
	_stats[? "hp"] = hp;
	_stats[? "stamina"] = stamina;
	//global.PlayerParty[| partyIndex] = _mon;
}

