/// @func twentymons_heal_party

audio_play_sound(snd_buff, 10, false);
for(var i = 0; i < ds_list_size(global.PlayerParty); i++) {
	var _mon = global.PlayerParty[| i];
	var _stats = _mon[? "stats"];
	
	_stats[? "hp"] = _stats[? "max_hp"];
	_stats[? "stamina"] = _stats[? "stamina"];
}