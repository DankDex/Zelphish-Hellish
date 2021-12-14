
// Doesn't move if game is paused
if(pause == false) {

	//Width and height of gui
	_gw = display_get_gui_width();
	_gh = display_get_gui_height();

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
	
	
	if(instance_exists(oPlayer)){
		//Weapon scroll wheel
		var slot_weapon_seperation = 60;
		//var begin_wheel = _gh/2 + (array_length_1d(oPlayer.weapons)/2) * -slot_weapon_seperation;
		var scrollWheel_begin = _gh/2 + (array_length_1d(oPlayer.weapons)/2) * -slot_weapon_seperation;
		var scrollWheel_end = _gh/2 + (array_length_1d(oPlayer.weapons)/2) * slot_weapon_seperation;
		//size_of_scroll_wheel = scrollWheel_end - scrollWheel_begin;
		var scrollSmoothness = 0.1; //or whatever you want to lerp by
		var scrollSpeed = 16; // or whatever you want to increment scrolling by

		if(mouse_wheel_up()){  scrollToLocation -= scrollSpeed;}
		if(mouse_wheel_down()){  scrollToLocation += scrollSpeed;}
		scrollToLocation = clamp(scrollToLocation, scrollWheel_begin, scrollWheel_end);// or whatever to clamp the view to the room height

		currentScrollLocation = lerp(currentScrollLocation, scrollToLocation, scrollSmoothness);
	}

	instance_activate_region(x-(cam_width)/2, y-(cam_height)/2, cam_width, cam_height, true);

}