
if(pause == false) {

if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	x_offset = clamp(-200, lengthdir_x(point_distance(xTo, yTo, mouse_x, mouse_y), point_direction(xTo, yTo, mouse_x, mouse_y))/5, 200);
	y_offset = clamp(-200, lengthdir_y(point_distance(xTo, yTo, mouse_x, mouse_y), point_direction(xTo, yTo, mouse_x, mouse_y))/5, 200);
	xTo += x_offset;
	yTo += y_offset;
}

/**
//Checks if camera hit the edge of the screen
if((x-(cam_width/2))/8>=0 && (x+(cam_width/2))/8<=room_width)
	x += (xTo - x)/smoothness;
else
	if(x/8<room_width/2 && xTo>x) //checks if player is walking to the other side when camera is on edge of screen, x axis
		x += (xTo - x)/smoothness;
	else if(x/8>room_width/2 && xTo<x)
		x += (xTo - x)/smoothness;

if((y-(cam_height/2))/8>=0 && (y+(cam_height/2))/8<=room_height)
	y += (yTo - y)/smoothness;
else
	if(y/8<room_height/2 && yTo>y) //checks if player is walking to the other side when camera is on edge of screen, y axis
		y += (yTo - y)/smoothness;
	else if(y/8>room_height/2 && yTo<y)
		y += (yTo - y)/smoothness;
**/

x += (xTo - x)/smoothness;
y += (yTo - y)/smoothness;

if(shake_frames>0){
	x_shake = irandom_range(-0.5,0.5);
	y_shake = random_range(-0.5, 0.5);
	shake_frames--;
}else{
	x_shake = 0;
	y_shake = 0;
}

var vm = matrix_build_lookat(x+x_shake,y+y_shake,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

}