
if(pause == false){
	part_type_direction(destroy_effect, angle-15, angle+15, 0, 0);
	part_particles_create(global.partSystem, x, y, destroy_effect, 3);
}