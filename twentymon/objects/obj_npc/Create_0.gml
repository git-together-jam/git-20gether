behavior = NpcBehavior.stationary;
dir = Facing.UP;
actionTimer = 15;
lookDistance = 4; // How many tiles can the npc look to see the player
moving = false;

show_debug_message((x + sprite_xoffset) % TILE_SIZE);
x += (x + sprite_xoffset) % TILE_SIZE;
// y += (y + sprite_yoffset) % TILE_SIZE;
target_x = x;
target_y = y;