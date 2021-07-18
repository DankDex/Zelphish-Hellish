
if(pause == false) {

if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	x_offset = clamp(-200, lengthdir_x(point_distance(xTo, yTo, mouse_x, mouse_y), point_direction(xTo, yTo, mouse_x, mouse_y))/5, 200);
	y_offset = clamp(-200, lengthdir_y(point_distance(xTo, yTo, mouse_x, mouse_y), point_direction(xTo, yTo, mouse_x, mouse_y))/5, 200);
	xTo += x_offset;
	yTo += y_offset;
}


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


camera_destroy(view_camera[0]);

camera = camera_create_view(room_width, room_height, cam_width/scale, cam_height/scale, 0, -1, -1, -1, cam_width/(2*scale), cam_height/(2*scale));
camera_set_view_pos(camera, x + x_shake - (cam_width/(2*scale)), y + y_shake - (cam_height/(2*scale)));

view_camera[0] = camera;

}