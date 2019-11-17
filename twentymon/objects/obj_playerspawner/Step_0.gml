/// @description Insert description here
// You can write your code in this editor
if room=roomcheck{
	instance_create_layer(valx,valy,"Instances",obj_player) //create the player and destroy self.
	instance_destroy(self)
}
