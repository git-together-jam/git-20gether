/// @desc Initialize 
// When using this font, use all caps otherwise you'll get some symbols instead.
global.TitleFont = font_add("Monster_Twenty.otf", 48, false, false, 32, 128);
global.MainFont = font_add("Monster_Twenty.otf", 24, false, false, 32, 128);
global.SmallFont = font_add("Monster_Twenty.otf", 16, false, false, 32, 128);


global.Particle_System = part_system_create();
part_system_depth(global.Particle_System, 299);

global.BattleMonParticle = part_type_create();
part_type_shape(global.BattleMonParticle, pt_shape_flare);
part_type_size(global.BattleMonParticle, 0.1, 0.2, 0, 0.5);
part_type_color1(global.BattleMonParticle, c_white)
part_type_alpha2(global.BattleMonParticle, 0.5, 0);
part_type_speed(global.BattleMonParticle, 3, 4, -0.10, 0);
part_type_direction(global.BattleMonParticle, 0, 360, 0, 20);
part_type_blend(global.BattleMonParticle, false);
part_type_life(global.BattleMonParticle, 15, 25);
