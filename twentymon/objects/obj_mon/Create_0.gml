name = "";
element = undefined;

max_hp = undefined;
max_stamina = undefined;
strength = undefined;
defense = undefined;
agility = undefined;

hp = max_hp;
stamina = max_stamina;
deltaHP = 0;

state = BattleMonState.idle;

// shader info
pixelWidthRef = shader_get_uniform(shd_outline, "pixelW");
pixelHeightRef = shader_get_uniform(shd_outline, "pixelH");
outlineColorRef = shader_get_uniform(shd_outline, "outlineColor");