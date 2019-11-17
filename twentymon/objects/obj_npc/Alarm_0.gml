/// @description Take the next npc movement action

if(behavior == NpcBehavior.wander) {
	alarm[0] = actionTimer;
	event_user(1);

} else if(behavior == NpcBehavior.spin) {
	alarm[0] = actionTimer;
	dir = choose(Facing.UP, Facing.DOWN, Facing.RIGHT, Facing.LEFT);
}
currentActionTimer = -1;
