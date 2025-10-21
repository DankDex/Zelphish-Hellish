// 888 by 500; camera size
// cam_width = 1776/2;
// cam_height = 1000/2;
cam_width = display_get_width();
cam_height = display_get_height();

ratio_width = 2560;
ratio_height = 1080;


//Scales the size of the camera (closer or farther away)
scale = 1;

// Set surface resize
surface_resize(application_surface, cam_width, cam_height);

//Camera used
camera = camera_create_view(room_width, room_height, cam_width, cam_height, 0, -1, -1, -1, cam_width, cam_height);

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

// Dictionary containing weapon GUI box information
// Key: Id of weapon
// Value: array → [weapon scale to use in the GUI icon, x offset to determine position to draw icon]
weapon_slot_info = ds_map_create();

// Weapon scroll wheel size calculated on step event and used on Draw GUI event
size_of_scroll_wheel = 0;