var str = "[" + object_get_name(object_index) + "] ";
for(var i=0; i<argument_count; i++) {
    str += string(argument[i]);
}
show_debug_message(str);