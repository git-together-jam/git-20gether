behavior = NpcBehavior.stationary;
dir = Facing.UP;
actionTimer = 90;
alarm[0] = actionTimer;
lookDistance = 4; // How many tiles can the npc look to see the player
moving = false;
imgspeed = 1;
message = "Hey! I didn't see you there.";

// snap x to grid
x += (x + sprite_xoffset) % TILE_SIZE;
target_x = x;
target_y = y;

