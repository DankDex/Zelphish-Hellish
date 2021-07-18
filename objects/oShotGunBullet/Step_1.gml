if(pause == false){

	// Check id it's in the room
	if(x<0 || x>room_width) instance_destroy();
	if(y<0 || y>room_height) instance_destroy();

	//Set range where pellets can go
	var _rr = randomRange;

	//Iterates through each pellet
	for(var i=0; i<numberPellets; i++){
	
		//Spawns pellet
		bullet = instance_create_layer(oPlayer.x,oPlayer.y,"Player",oShotGunBulletPellet);

		//Shotgun damage is divided between each pellet
		var bullet_damage = damage/numberPellets;

		//With pellet
		with(bullet){
	
			randomize();
	
			//Set it's angle, speed, image angle and damage
			angle = point_direction(x,y,mouse_x,mouse_y) + random_range(-_rr, _rr);	//The angle varies within the choosen range
			spd = 30;
			image_angle = angle - 90;
			damage = bullet_damage;
	
		}
	
	}

	//Main shotgun bullet destroys itself after spawning all its pellets
	instance_destroy();

}
