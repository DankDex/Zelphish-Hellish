///@description shoot_bullet(damage, speed, angle, bullet_type, is_bullet_from_enemy, shot_effect, target)
///@param xx
///@param yy
///@param damage
///@param speed
///@param angle
///@param bullet_type
///@param is_bullet_from_enemy
///@param shot_effect
function shoot_bullet(xx, yy, _damage, _speed, _angle, _bullet_type, _is_bullet_from_enemy, _shot_effect){

	bullet = instance_create_layer(xx,yy, "Instances", _bullet_type);
			
	with(bullet){
		angle = _angle;	
		spd = _speed;
		image_angle = _angle - 90;
		damage = _damage;
		bullet_from_enemy = _is_bullet_from_enemy;
	}
			
	part_type_direction(_shot_effect, _angle-45, _angle+45, 0, 0);
	part_particles_create(global.partSystem, xx, yy, _shot_effect, 5);

}