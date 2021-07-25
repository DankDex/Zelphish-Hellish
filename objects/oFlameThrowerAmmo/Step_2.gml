

var _angle = point_direction(oPlayer.x, oPlayer.y,mouse_x,mouse_y)-180;
	
	//Change position according to it's speed and angle
	x = oPlayer.x + lengthdir_x(-15, _angle);
	y = oPlayer.y + lengthdir_y(-15, _angle);