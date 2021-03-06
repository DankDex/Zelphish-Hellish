
// Checks if it has passed enough frames since last shot, if the player exists, if it has bullets in magazine and if the player has the respective weapon equipped
if(firerate_check>=firerate && instance_exists(oPlayer) && magazine_check>0 && pause == false && oPlayer.weapon==object_index){


	var _angle = point_direction(oPlayer.x, oPlayer.y,mouse_x,mouse_y)-180;
	var xx = oPlayer.x + lengthdir_x(-15, _angle);
	var yy = oPlayer.y + lengthdir_y(-15, _angle);
	//shoot_bullet(xx, yy, damage, bullet_speed, _angle, bullet_type, false, shooting_effect);
	
	bullet = instance_create_layer(xx,yy, "Instances", oFlameThrowerAmmo);
	
	var _damage = damage;
	
	with(bullet){
		angle = _angle;	
		spd = 0;
		image_angle = _angle;
		damage = _damage;
		bullet_from_enemy = false;
	}

	firerate_check = 0; //Starts timers until next shot in frames
	
	//Decriment a bullet in magazine
	if(magazine_check>0)
		magazine_check--;
		
	var _knockback = knockback;
	with(oPlayer){
		oPlayer.state = 3;
		h_push = -lengthdir_x(_knockback,point_direction(x,y,mouse_x,mouse_y));
		v_push = -lengthdir_y(_knockback,point_direction(x,y,mouse_x,mouse_y));
	}
		
}
