if(instance_exists(oPlayer)){
	x = oPlayer.x;
	y = oPlayer.y;
}else{
	instance_destroy();
}

image_angle = point_direction(x,y, mouse_x, mouse_y);




