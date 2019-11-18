#macro mouse_x_gui device_mouse_x_to_gui(0)
#macro mouse_y_gui device_mouse_y_to_gui(0)

// Tile Specific
#macro TILE_SIZE 20
#macro TILE_MOVE_SIZE 10
#macro TILE_MOVE_SPD 1 
#macro TILE_JUMP_SPD 3
#macro JUMP_DIST_ANIM -7

enum Tile_Col {
	AIR,	
	SOLID,
	JUMP,
	ONE_LEFT,
	ONE_RIGHT,
	ONE_UP,
	ONE_DOWN
}

// Keys
#macro KEY_UP global.keyboard_up
#macro KEY_DOWN global.keyboard_down
#macro KEY_LEFT global.keyboard_left
#macro KEY_RIGHT global.keyboard_right
#macro KEY_JUMP global.keyboard_jump
#macro KEY_SPRINT global.keyboard_sprint

#macro MAX_KEYS_HELD 8

// Character
enum Facing {
	LEFT,
	RIGHT,
	UP,
	DOWN
}

// Battle states
enum BattleStates {
	start,
	playerTurn,
	playerAttackRoll,
	playerDefenseRoll,
	playerAttack,
	enemyTurn,
	enemyAttackRoll,
	enemyDefenseRoll,
	enemyAttack,
	dieRoll
}

// Npcs
enum NpcBehavior {
	stationary,
	spin,
	wander,
	linewalk
}

// Battle actions
enum BattleActions {
	attack,
	defend,
	rest
}

// Mons
enum LevelingCurve {
	fast,
	medium,
	slow
}