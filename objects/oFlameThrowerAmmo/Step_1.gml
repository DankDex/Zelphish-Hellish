
if(pause == false && instance_exists(oPlayer)){
	
	var _angle = point_direction(oPlayer.x, oPlayer.y,mouse_x,mouse_y)-180;
		
	image_angle = _angle;

	// Check id it's in the room, if not then destroys itself
	if(x<0 || x>room_width) instance_destroy();
	if(y<0 || y>room_height) instance_destroy();

}