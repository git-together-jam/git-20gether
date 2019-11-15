if !ds_exists(global.gridColData,ds_type_grid) {
	global.gridColData = ds_grid_create(1,1);
}

global.gridColDataWidth = room_width/gridSize;
global.gridColDataHeight = room_height/gridSize;

var _width = global.gridColDataWidth;
var _height = global.gridColDataHeight;

ds_grid_resize(global.gridColData,_width,_height);
ds_grid_set_region(global.gridColData,0,0,_width,_height,col.AIR);

/*with(obj_solid) {
	for(var _row=0; _row < image_yscale; row++) {
		for(var _col=0; _col < image_xscale; _col++) {
			global.gridColData[# x/gridSize+_col,y/gridSize+_row] = get_tile_mask(mask_index);
		}	
	}
	instance_destroy();
}*/