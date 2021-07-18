
//Create chosen particle effects when destroys
part_type_direction(destroy_effect, angle-45, angle+45, 0, 0);
part_particles_create(global.partSystem, x, y, destroy_effect, 5);