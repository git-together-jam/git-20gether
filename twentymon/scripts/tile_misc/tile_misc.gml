//gml_pragma("global","tile_misc()");
enum tile_col {
	AIR,	
	SOLID,
	JUMP,
	ONE_LEFT,
	ONE_RIGHT,
	ONE_UP,
	ONE_DOWN
}

enum facing {
	LEFT,
	RIGHT,
	UP,
	DOWN
}

// Only these exists if fisrt line is uncommented.
global.gridColData = 0;
global.gridColDataWidth = 0;
global.gridColDataHeight = 0;