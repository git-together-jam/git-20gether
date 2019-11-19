/// @desc Clean up data structures
ds_destroy(global.Twentymons, ds_type_map);
ds_destroy(global.PlayerParty, ds_type_list);
font_delete(global.TitleFont);
font_delete(global.MainFont);
font_delete(global.SmallFont);

part_type_destroy(global.BattleMonParticle);
part_system_destroy(global.Particle_System);

