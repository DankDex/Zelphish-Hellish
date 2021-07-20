
// Checks if it has passed enough frames since last shot, if the player exists, if it has bullets in magazine and if the player has the respective weapon equipped
if(firerate_check>=firerate && instance_exists(oPlayer) && magazine_check>0 && pause == false && oPlayer.weapon==object_index){


	var _angle = point_direction(oPlayer.x, oPlayer.y,mouse_x,mouse_y);
	var xx = oPlayer.x + lengthdir_x(15, _angle);
	var yy = oPlayer.y + lengthdir_y(15, _angle);
	shoot_bullet(xx, yy, damage, 30, _angle, bullet_type, false, shooting_effect);

	//// Creates bullets of corresponding type
	//bullet = instance_create_layer(oPlayer.x,oPlayer.y,"Player",bullet_type);

	//var bullet_damage = damage; //The damage the bullet will cause
	//var shot_effect = shooting_effect; //The particle effect when it gets shot

	//with(bullet){
	
	//	//Bullet angle, speed, image angle and damage
	//	angle = point_direction(x,y,mouse_x,mouse_y);	
	//	spd = 30;
	//	image_angle = angle - 90;
	//	damage = bullet_damage;
		
	//	//Offset to spawn particles (15 pixels away from player since bullets spawn ON player and the effect has to be a little farther away)
	//	var xx = x + lengthdir_x(15, angle);
	//	var yy = y + lengthdir_y(15, angle);
		
	//	//Create chosen particles with corresponding variables
	//	part_type_direction(shot_effect, angle-45, angle+45, 0, 0);
	//	part_particles_create(global.partSystem, xx, yy, shot_effect, 5);
	
	//}

	firerate_check = 0; //Starts timers until next shot in frames
	
	//Decriment a bullet in magazine
	if(magazine_check>0)
		magazine_check--;
		
}
