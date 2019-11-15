/// @description get_col
/// @param x
/// @param y
/// @param dir_x
/// @param dir_y
/// @param Check_For_Type
var xx, yy, nx, ny, type;
xx = argument0;
yy = argument1;
nx = argument2;
ny = argument3;
return global.gridColData[# (xx/gridSize)+nx,(yy/gridSize)+ny];