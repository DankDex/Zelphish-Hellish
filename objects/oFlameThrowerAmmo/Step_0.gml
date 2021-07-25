
if(frames_until_it_disapears<=0){
	instance_destroy();	
}else{
	frames_until_it_disapears--;
}


part_type_direction(global.ptFlamethrower, angle-30, angle+30, 0, 0);
part_particles_create(global.partSystem_top, x, y, global.ptFlamethrower, 20);