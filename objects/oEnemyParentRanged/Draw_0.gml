event_inherited();


//Charge Animation
if(firerate_check < firerate_check_for_charging_animation_counter){
	var _angle = angle+40;
	
	var xx = x + lengthdir_x(15, _angle);
	var yy = y + lengthdir_y(15, _angle);
	
	part_particles_create(global.partSystem_top, xx, yy, global.ptCharge, 1);
}