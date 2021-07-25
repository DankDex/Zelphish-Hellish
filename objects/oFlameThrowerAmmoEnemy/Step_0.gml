
if(frames_until_it_disapears<=0){
	instance_destroy();	
}else{
	frames_until_it_disapears--;
}


//part_type_speed(global.ptFlamethrower, oPlayer.walk_speed + 2, oPlayer.walk_speed + 4, 0, 0);
//part_type_direction(global.ptFlamethrower, angle-15, angle+15, 0, 0);
//part_particles_create(global.partSystem_top, x, y, global.ptFlamethrower, 15);