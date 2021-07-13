
if(firerate_check>=firerate && instance_exists(oPlayer) && magazine_check>0 && pause == false && oPlayer.weapon==object_index){

	bullet = instance_create_layer(oPlayer.x,oPlayer.y,"Player",bullet_type);

	var bullet_damage = damage;
	var shot_effect = shooting_effect;

	with(bullet){
	
		angle = point_direction(x,y,mouse_x,mouse_y);	
		spd = 30;
		image_angle = angle - 90;
		damage = bullet_damage;
		
		var xx = x + lengthdir_x(15, angle);
		var yy = y + lengthdir_y(15, angle);
		
		part_type_direction(shot_effect, angle-45, angle+45, 0, 0);
		part_particles_create(global.partSystem, xx, yy, shot_effect, 5);
	
	}

	firerate_check = 0;
	if(magazine_check>0)
		magazine_check--;
		
}
