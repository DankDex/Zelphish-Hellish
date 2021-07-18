
if(pause == false){
	
	//Change position according to it's speed and angle
	x += lengthdir_x(spd, angle);
	y += lengthdir_y(spd, angle);

	// Check id it's in the room, if not then destroys itself
	if(x<0 || x>room_width) instance_destroy();
	if(y<0 || y>room_height) instance_destroy();

}