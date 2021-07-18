
//Open or close pause menu
if(pause == false) {
	instance_create_layer(oCamera.x, oCamera.y,"Menus", oMenuPause);
	pause = true;
}else{
	pause = false;
	with(oMenuPause){
		instance_destroy();	
	}
}