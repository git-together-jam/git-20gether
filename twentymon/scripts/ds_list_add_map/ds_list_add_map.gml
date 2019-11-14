/// @func ds_list_add_map(id, value)
/// @arg id
/// @arg value

var list = argument0,
	map  = argument1;

ds_list_add(list, map);
return ds_list_mark_as_map(list, ds_list_size(list)-1);