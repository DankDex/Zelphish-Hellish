ps.step();

advanced_part_emitter_burst(ps, em, fire_part, 60);
advanced_part_emitter_burst(ps, em, cinder_part, 60);

//move towards mouse
advanced_part_emitter_region(em, mouse_x-2, mouse_x+2, mouse_y, mouse_y-2, aps_shape.ellipse, aps_distr.linear);