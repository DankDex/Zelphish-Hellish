// 888 by 500; camera size
cam_width = 1776/2;
cam_height = 1000/2;

//Scales the size of the camera (closer or farther away)
scale = 1;

//Camera used
camera = camera_create_view(room_width, room_height, cam_width, cam_height, 0, oPlayer, -1, -1, cam_width/2, cam_height/2);

//Camera is assigned to the viewport 0
view_camera[0] = camera;

//The camera follows the player
follow = oPlayer;

//Used for smooth camera while following the player
xTo = x;
yTo = y;

//The bigger the slower it will follow the player
smoothness = 5;

//Amount of frames it will shake; 60 = 1 second
shake_frames = 0;