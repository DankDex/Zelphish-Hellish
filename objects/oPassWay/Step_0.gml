
if(instance_number(oEnemyParent) <= 0) activate = true;

if(activate == true) {
	visible = true;
	sprite_index = sGateWay;
	
	var xx = x + irandom_range(-16,16);
	var yy = y + irandom_range(-32,32);
	part_particles_create(global.partSystem, xx, yy, global.ptItemAura, 4);
	
}else{
	sprite_index = noone;	
}

