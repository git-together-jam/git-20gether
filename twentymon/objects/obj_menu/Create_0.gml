// Add new menu items by adding a string to this array, and adding a switch case in obj_cursor's Space event
menuItems = ["START", "OPTIONS", "QUIT"];
cursorInstance = instance_create_layer(0, 0, "Instances", obj_cursor);
cursorInstance.menuInstance = id;
cursorInstance.menuItems = menuItems;