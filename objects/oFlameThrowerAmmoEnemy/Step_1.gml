
if(pause == false){
	
	if(instance_exists(emmiter))
		_angle = point_direction(emmiter.x, emmiter.y,oPlayer.x,oPlayer.y)-180+40;
	else
		instance_destroy();

	image_angle = _angle;

	// Check id it's in the room, if not then destroys itself
	if(x<0 || x>room_width) instance_destroy();
	if(y<0 || y>room_height) instance_destroy();

}