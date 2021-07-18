
// Doesn't move if game is paused
if(pause == false) {

	//If player exists it will smoothly follow it
	if(instance_exists(follow)){
		xTo = follow.x;
		yTo = follow.y;
		
		//Camera slightly moves to the direction of the mouse
		x_offset = clamp(-200, lengthdir_x(point_distance(xTo, yTo, mouse_x, mouse_y), point_direction(xTo, yTo, mouse_x, mouse_y))/5, 200);
		y_offset = clamp(-200, lengthdir_y(point_distance(xTo, yTo, mouse_x, mouse_y), point_direction(xTo, yTo, mouse_x, mouse_y))/5, 200);
		xTo += x_offset;
		yTo += y_offset;
	}

	//Moves closer to the position of the player according to the smoothness variable
	x += (xTo - x)/smoothness;
	y += (yTo - y)/smoothness;

	//Set a random shake each frame; It lasts for a a number of set frames
	if(shake_frames>0){
		x_shake = irandom_range(-4,4);
		y_shake = random_range(-4, 4);
		shake_frames--;
	}else{
		x_shake = 0;
		y_shake = 0;
	}

	//Destroys the camera to reset its position
	camera_destroy(view_camera[0]);

	//Creates a camera according to the set scale and position
	camera = camera_create_view(room_width, room_height, cam_width/scale, cam_height/scale, 0, -1, -1, -1, cam_width/(2*scale), cam_height/(2*scale));
	camera_set_view_pos(camera, x + x_shake - (cam_width/(2*scale)), y + y_shake - (cam_height/(2*scale)));

	//Assigns it to the viewport 0
	view_camera[0] = camera;

}