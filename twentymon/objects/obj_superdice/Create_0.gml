/// @description Insert description here
// You can write your code in this editor

randomize();
mynum = random_range(1,20);

image_index = random_range(0,sprite_get_number(spr_d20));

isbouncing = true;

boardline = 300;
grav = 0.4;
vsp = 0;
hsp = -4;

numspeed = 0.2;
image_speed = 3;

dicetimer = 0;