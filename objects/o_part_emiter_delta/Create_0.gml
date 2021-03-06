ps = new advanced_part_system();
ps.enabledelta(); ps.particle_system_debug_mode = global.particles_debug_mode;
part_emiter_ = new advanced_part_emitter(ps, x-20, x+20, y-20, y+20, aps_shape.rectangle, aps_distr.linear);

part_type1 = new advanced_part_type();
with(part_type1) {
	part_gravity(0.1 * 60 * 60, 270);
	part_life(60 / 60, 120 / 60);
	part_size(1, 1, 0, 0);
	part_orientation(0, 0, 0, 0, false);
	part_image(s_pixel, 0, c_white, false, false, false);
	part_speed(0.25 * 60, 0.25 * 60, 0, 0);
	part_direction(0, 359, 0, 0);
	part_step_function(
		function() {
			if collision_point(x, y, oPointTarget, true, false) {
				color = c_red;
				//size_increase = 10;
				sprite = s_heart;
			}
		}
	);
}