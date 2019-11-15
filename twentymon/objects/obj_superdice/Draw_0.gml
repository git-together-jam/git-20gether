/// @description Insert description here
// You can write your code in this editor

// HALT visitor. you are entering the LANDS OF SHADOWDRAW. enjoy your stay.

draw_set_color(c_black);
draw_set_alpha(0.2);

draw_circle(x,boardline+10,10,false);

draw_set_alpha(1);
draw_set_color(c_white);

draw_self();
draw_text(0,0,y);
draw_set_color(c_black);
var mm = round(mynum);
draw_text(x-string_width(mm)/2,y-string_height(mm)/2,mm);
draw_set_color(c_white);