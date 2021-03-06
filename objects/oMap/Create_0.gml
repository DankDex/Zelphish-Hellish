///@description Create Event of oMap

//GUI location
x = view_wport[0] - 300;
y = 16;

big = false; //Used to zoom in or out of map
scale_mult_big = 1.5; //The bigger the more zoomed it is
scale = 0.04*scale_mult_big; //The size of the map

map_alpha = 0.7;

//Measurements
width = round(room_width * scale);
height = round(room_height * scale);

//1D array of the objects to draw and the colors used to represents them in the map
objects_to_draw = [
	//oWall, c_dkgray,
	//oVoidWall, c_black,
	oPlayer, c_maroon,
	oEnemyParent, c_yellow,
	oBullet_Parent, c_white,
	oAmmoBox, c_blue,
	oPassWay, c_green
]



for(var i = 0; i < (room_width/64); i++){
	
	for(var j = 0; j < (room_height/64); j++){
		if(position_meeting(i*64+32,j*64+32,oWall)){
			show_debug_message("Wall stored");
			wall_draw[i][j] = 1;
		}else{
			wall_draw[i][j] = 0;
		}
		
	}
	
}


background_color = c_gray;
