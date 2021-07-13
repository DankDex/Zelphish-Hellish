if(godMode==false && pause == false)
if(invinsibility_frames>=30){
	var push = 50;

	h_push = -lengthdir_x(push,point_direction(x,y,other.x,other.y));
		
	v_push = -lengthdir_y(push,point_direction(x,y,other.x,other.y));
	
	invinsibility_frames = 0;
	
	state = 2;
	
	hp -= 10;
	
	if(hp<=0){
		part_particles_create(global.partSystem, x, y, global.ptBloodPool, 5);
		part_particles_create(global.partSystem, x, y, global.ptBlood, 30);
		
		with(oMenuPause){
			instance_destroy();	
		}
		
		instance_create_layer(oCamera.x, oCamera.y,"Menus", oMenuDeath);
		
		instance_destroy();
	}
	
	part_particles_create(global.partSystem, x, y, global.ptBlood, 15);
}
