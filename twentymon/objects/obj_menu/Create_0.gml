/* Menu Notes
- Have an array of strings for the menu items: Start, Options, and Quit
- Array contents should be drawn in a for loop at an offset each time
- The cursor object has a variable that's used for navigating through the array
and doing things based on the array index that's stored
*/
menuItems = ["START", "OPTIONS", "QUIT"];
cursorInstance = instance_create_layer(0, 0, "Instances", obj_cursor);
cursorInstance.menuInstance = id;
cursorInstance.menuItems = menuItems;