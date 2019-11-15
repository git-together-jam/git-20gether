/// @desc 

randomize();

global.TwentymonList = ds_list_create();

room_goto(rm_test);

/*
	(Maybe?)
	Create a map for each twentymon
	Add the map to the global.TwentymonList
	I like to store the position of the twentymon in the list
		to use it as an ID
*/