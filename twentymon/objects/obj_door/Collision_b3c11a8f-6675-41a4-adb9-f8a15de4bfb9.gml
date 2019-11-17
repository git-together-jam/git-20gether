/// @description Insert description here
// You can write your code in this editor
var a=instance_create_depth(x,y,0,obj_playerspawner) //create a persistant object to manage player spawn
with a{
	valx=other.spawnpos[0]; //spawnpos is where we want the player to spawn in the next room
	valy=other.spawnpos[1];
	roomcheck=other.roomgo;
}
room_goto(roomgo)