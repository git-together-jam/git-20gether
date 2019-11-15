/// @description Insert description here
// You can write your code in this editor


if(isbouncing){
	if (y > boardline) {
	    y = boardline;
	    vsp *= -0.8;
		hsp *= 0.5;
	} else {
	    vsp += grav;
	}

if(abs(vsp) < 1 and y > boardline-6){
	isbouncing = false;
}

y+=vsp;
x+=hsp;

if (mynum + numspeed > 20){
	mynum += -20 + numspeed;	
}else if(mynum + numspeed < 1){
	mynum += 20 + numspeed;
}else{
	mynum += numspeed;	
}

}else{
	image_speed = 0;
}