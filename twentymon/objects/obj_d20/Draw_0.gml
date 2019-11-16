/// @description Die and die shadow

// Draw shadow
draw_set_color(c_black);
draw_set_alpha(0.2);

draw_circle(x,boardline+10,10,false);

draw_set_alpha(1);
draw_set_color(c_white);

// Draw die
draw_self();
draw_set_align(1);
draw_text(0, 0, y);
draw_text(0, 15, vsp);
draw_text(0, 30, isRolling);
draw_set_color(c_black);
draw_set_align(5);
draw_text(x, y, floor(number));
draw_set_color(c_white);