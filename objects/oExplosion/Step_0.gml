
part_particles_create(global.partSystem, x, y, destroy_effect, 20);

if(frames_until_it_disapears<=0){
	instance_destroy();	
}else{
	frames_until_it_disapears--;
}