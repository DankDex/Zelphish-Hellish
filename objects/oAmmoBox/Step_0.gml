
if (create_particle) {
    var xx = x + irandom_range(-10,10);
	var yy = y + irandom_range(-10,0);
	part_particles_create(global.partSystem, xx, yy, global.ptItemAura, 1);
}

create_particle = !create_particle;