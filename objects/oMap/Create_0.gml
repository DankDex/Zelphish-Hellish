///@description Create Event of oMap

//GUI location
x = view_wport[0] - 133;
y = 16;

big = false; //Used to zoom in or out of map
scale_mult_big = 1; //The bigger the more zoomed it is
scale = 0.05*scale_mult_big; //The size of the map

map_alpha = 0.7;

//Measurements
width = round(room_width * scale);
height = round(room_height * scale);

//1D array of the objects to draw and the colors used to represents them in the map
objects_to_draw = [
	oWall, c_dkgray,
	oPlayer, c_maroon,
	oEnemyParent, c_yellow,
	oBullet_Parent, c_white,
	oAmmoBox, c_blue
]


background_color = c_gray;
