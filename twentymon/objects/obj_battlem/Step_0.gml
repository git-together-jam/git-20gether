/// @description Insert description here
// You can write your code in this editor
if(ihatetimersverymuchIhatethem < 90000000000000000){
	ihatetimersverymuchIhatethem++;
}

goodpoke.image_yscale = sin(ihatetimersverymuchIhatethem/15)*0.1 + 1;
badpoke.image_yscale = sin(ihatetimersverymuchIhatethem/15)*0.1 + 1;

switch(objstate){
	case 0: // Call in the BOIS
	
		if(goodpoke.x < 80){
			goodpoke.x += boyspeed;
			badpoke.x = room_width - goodpoke.x;
		}else{
			objstate = 1;
		}
	break;
	case 1: // Selecting what t o d o
		if(keyboard_check_pressed(vk_anykey)){
			switch(keyboard_lastkey){
				case ord("Z"):
				objstate = 2;
					instance_create_depth(room_width+50,160,-50,obj_superdice);
				break;
				
			}
		}
	break;
	case 2: // Dice rollling
		if(keyboard_check_pressed(vk_anykey)){
		switch(keyboard_lastkey){
			case ord("Z"):
				with(obj_superdice){
					image_speed = choose(-2,2);
					vsp-=5;
					hsp=irandom_range(-3,3);
				}
			break;
			}
		}
		if(!obj_superdice.isbouncing){
			// Continue here. Set the state to 3 or something. IDK. IDC.
		}
		
	break;
	
	
	default:
			// IDK
	break;
}