/// @desc Init

number = roll_d20();

image_index = random_range(0, image_number);

isRolling = true;
playerControlled = false;

boardline = obj_battle.boardline;
grav = 0.4;
vsp = 0;
hsp = -5.5;

image_speed = 3;
numspeed = image_speed / 20;

// Table bumps
canBump = true;
shouldBump = false;
criticalThreshold = 3;
bounces = 2;
minValue = 0;
superBounce = false;
bumpY = y;