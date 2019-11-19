/// @func battle_create_effect(source, target)
/// @arg source
/// @arg target

var _source = argument0;
var _target = argument1;
var _dmg = calculate_attack_damage();
_target.deltaHP += _dmg;
if(_target.hp - _dmg < 0) {
	ds_priority_delete_value(obj_battle.twentymon_buffer, _target);
	ds_priority_delete_value(obj_battle.twentymon_queue, _target);
	with(_source) {
		if(object_index == obj_player_mon) {
			xp_gained += twentymon_gain_xp(self, _target);
		}
	}
		
		
}
var _inst = instance_create_layer(_source.x, _source.y, "Battle_Effects", obj_battle_effect);
_inst.target = _target;
var _color = c_white;
switch(_source.element) {
	case TwentymonType.earth:
		_color = c_olive;
		break;
	case TwentymonType.water:
		_color = c_blue;
		break;
	case TwentymonType.fire:
		_color = c_red;
		break;
}

_inst.image_blend = _color;
_inst.element = _source.element;