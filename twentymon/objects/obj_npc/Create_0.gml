// configurable
behavior = NpcBehavior.stationary;
dir = Facing.UP;
actionTimer = 90; // How long will the npc take to wander to a new tile, face a new direction, etc
lookDistance = 4; // How many tiles can the npc look to see the player
message = "Hey! I didn't see you there."; // Message on interact
asksQuestion = false;
shouldApproach = false;
prompts = [];
followups = [];


originalDir = dir;
currentActionTimer = -1;
alarm[0] = actionTimer;
moving = false;
imgspeed = 1;
approaching = false;


// snap x to grid
x += (x + sprite_xoffset) % TILE_SIZE;
target_x = x;
target_y = y;
