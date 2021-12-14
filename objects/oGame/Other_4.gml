
//Destroy if it enter main menu
if(room == rMenu){ 
	cursor_sprite = noone;
	window_set_cursor(cr_default);
	instance_destroy();
}

//Set grip according to room size [room must be a multiple of 64]
grid = mp_grid_create(0,0,room_width/64,room_height/64,64,64);

//Create the needed instances
if(room != Test && room != rMenu){
	instance_create_layer(x+32,y+32,"Player",oPlayer);
	instance_create_layer(x,y,"Instances",oLevelGen);
	instance_create_layer(x,y,"Instances",oCamera);
	instance_create_layer(x,y,"Instances",oMap);

}


//Initialize particle system
global.partSystem = part_system_create_layer("Particles", false);
global.partSystem_top = part_system_create_layer("Particles", false);
part_system_depth(global.partSystem_top, layer_get_depth("Enemies")-1);

gpu_set_alphatestref(true);
gpu_set_blendenable(true);
draw_texture_flush();