
if(instance_number(oEnemyParent) <= 0) activate = true;

if(activate == true) {
	visible = true;
	sprite_index = sGateWay;
	
	var xx = x + irandom_range(-16,16);
	var yy = y + irandom_range(-32,32);
	part_particles_create(global.partSystem, xx, yy, global.ptItemAura, 4);
	
	if(!instance_exists(oTriangle) && instance_exists(oPlayer))
		instance_create_layer(oPlayer.x, oPlayer.y - 30, "Player", oTriangle);
	
}else{
	sprite_index = noone;	
}

