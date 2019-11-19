/// @desc create particle effects

//if(state != BattleMonState.idle) {
//	var _values = twentymon_get_outline(state);
//	var _color = make_color_rgb(_values[0] * 255, _values[1] * 255, _values[2] * 255);
//	part_type_color1(global.BattleMonParticle, _color);
//	part_particles_create(global.Particle_System, x, y, global.BattleMonParticle, 5);
//	if(!isEnemy && resting) {
//		part_type_color1(global.BattleMonParticle, c_gray);
//		part_particles_create(global.Particle_System, x, y, global.BattleMonParticle, 5);	
//	}
//}
var _color = noone;
if(self == obj_battle.currentMon) {
	var _values = twentymon_get_outline(BattleMonState.attacking);
	var _color = make_color_rgb(_values[0] * 255, _values[1] * 255, _values[2] * 255);
} else if(self == obj_battle.targetMon) {
	var _values = twentymon_get_outline(BattleMonState.defending);
	var _color = make_color_rgb(_values[0] * 255, _values[1] * 255, _values[2] * 255);
}
if(_color != noone) {
	part_type_color1(global.BattleMonParticle, _color);
	part_particles_create(global.Particle_System, x, y, global.BattleMonParticle, 5);
}

if(!isEnemy && resting) {
	part_type_color1(global.BattleMonParticle, c_gray);
	part_particles_create(global.Particle_System, x, y, global.BattleMonParticle, 5);	
}