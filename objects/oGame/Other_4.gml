
if(room == rMenu) instance_destroy();

grid = mp_grid_create(0,0,room_width/64,room_height/64,64,64);

if(room != Test && room != rMenu){
	instance_create_layer(x+32,y+32,"Player",oPlayer);
	instance_create_layer(x,y,"Instances",oLevelGen);
	instance_create_layer(x,y,"Instances",oCamera);
	instance_create_layer(x,y,"Instances",oLantern);
	instance_create_layer(x,y,"Instances",oShadows);
	instance_create_layer(x,y,"Instances",oMap);
}