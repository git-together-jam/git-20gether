/// @description Add leveled up particles
if(!battleBegin) {
	for(var i = 0; i < array_length_1d(leveledUp); i++) {
		if(leveledUp[i]) {
			with(instance_find(obj_player_mon, i)) {
				part_particles_create(global.Particle_System, x, y, global.LevelUpParticle, 5);
			}
		}
	}
}

