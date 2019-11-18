/// @description Draws player sprite + jump_dist calculations

//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
// draw_rectangle(x, y, x + TILE_SIZE, y + TILE_SIZE, false);
draw_sprite_ext(sprite_index,image_index,x,y+jump_Dist,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
