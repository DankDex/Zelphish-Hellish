
if(oPassWay.activate == true && instance_exists(oPlayer)) {
	var dir = point_direction(oPlayer.x, oPlayer.y, oPassWay.x, oPassWay.y) - 90;
	x = oPlayer.x;
	y = oPlayer.y;
	image_angle = dir;
}