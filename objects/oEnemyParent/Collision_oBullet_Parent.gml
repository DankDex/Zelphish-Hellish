if(pause == false && other.bullet_from_enemy == false) {

	#region // calculate damage taken

		var crit;

		if(chance(10)) { //When crit
			damage_taken = other.damage * crit_multiplier;
			hp -= damage_taken;
			crit = true;
		}else{ //When not crit
			damage_taken = other.damage;
			hp -= damage_taken;
			crit = false;
		}

	#endregion

	#region // damage number pop up

		numberDamage = instance_create_layer(x, y, "Player", oDamageNumber);
		numberDamage.damage = string(damage_taken);
		numberDamage.crit = crit;

	#endregion

	#region // if died

		if(hp<=0){
			part_particles_create(global.partSystem, x, y, particle_when_dead, 1);
			part_particles_create(global.partSystem, x, y, particle_when_hit, 15);
	
			instance_destroy();
			oCamera.shake_frames = 5;
		}

	#endregion

	#region // push enemy on hit

		var _pDirection_of_player = point_direction(x,y,other.x,other.y);
		h_push = -lengthdir_x(push_force_when_hit, _pDirection_of_player);
		v_push = -lengthdir_y(push_force_when_hit, _pDirection_of_player);
	
		if(!place_meeting(x+h_push,y,oWall)) x += h_push;
		if(!place_meeting(x,y+v_push,oWall)) y += v_push;

	#endregion

	state = 2;

	part_particles_create(global.partSystem, x, y, particle_when_hit, 5);

}