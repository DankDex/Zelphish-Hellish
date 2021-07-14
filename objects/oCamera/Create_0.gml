camera = camera_create();

cam_width = 1776/2;
cam_height = 1000/2;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(cam_width,cam_height,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

follow = oPlayer;

xTo = x;
yTo = y;
smoothness = 5;
shake_frames = 0;