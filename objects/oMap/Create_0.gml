///@description Create Event of obj_map
x = view_wport[0] - 200;
y = 16;

big = false;
scale_mult_big = 1;
scale = 0.05*scale_mult_big;


width = round(room_width * scale);
height = round(room_height * scale);


objects_to_draw = [
	oWall, c_dkgray,
	oPlayer, c_maroon,
	oEnemyParent, c_yellow,
	oBullet_Parent, c_white
]


background_color = c_gray;
