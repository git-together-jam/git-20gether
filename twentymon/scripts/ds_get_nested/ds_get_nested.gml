/// @func ds_get_nested(map_or_list_or_grid, key...)
/// @arg map_or_list_or_grid
/// @arg key...
var _ds = argument[0];
for(var i = 1; i < argument_count; i++){
    if(is_real(argument[i])){
        _ds = _ds[| argument[i]];
    }
    else if(is_array(argument[i])){
        var arr = argument[i];
        _ds = _ds[# arr[0], arr[1]];
    }
    else{
        _ds = _ds[? argument[i]];
    }
}
return _ds;