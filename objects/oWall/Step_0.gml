if(!collision_circle(x,y,500, oPlayer, 0, 0)) {
	// Ignore for mouse light
	light_ignore_shadow_caster(obj_light.light, id);
}
else {
	// Acknowledge for mouse light
	light_acknowledge_shadow_caster(obj_light.light, id);
}