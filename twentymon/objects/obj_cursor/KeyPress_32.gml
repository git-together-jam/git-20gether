/// @desc Confirm selection
switch (menuItems[currentIndex]) {
case "START":
    room_goto(rm_test);
    break;
case "QUIT":
    game_end();
    break;
default:
    show_message("obj_cursor switch statement error");
    break;
}