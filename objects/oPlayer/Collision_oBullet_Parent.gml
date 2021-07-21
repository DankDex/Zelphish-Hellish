
//When player touches enemy

//If godmode isn't activated and game isn't paused
if(godMode==false && pause == false && other.bullet_from_enemy == true){
	
	if(invinsibility_frames>=30){ //If player isn't invinsible anymore
		
		//Push player in opposite direction of enemy
		var push = 50;
		h_push = -lengthdir_x(push,point_direction(x,y,other.x,other.y));
		v_push = -lengthdir_y(push,point_direction(x,y,other.x,other.y));
	
		//Make player temporarly invincible
		invinsibility_frames = 0;
	
		state = 2; //Hurt state
		
		//Player takes damage
		hp -= other.damage;
	
		//If player dead
		if(hp<=0){
			
			//Create blood splatter
			part_particles_create(global.partSystem, x, y, global.ptBloodPool, 5);
			part_particles_create(global.partSystem, x, y, global.ptBlood, 30);
		
			//Destroys pause menu
			with(oMenuPause){
				instance_destroy();	
			}
			
			//Creates death menu
			instance_create_layer(oCamera.x, oCamera.y,"Menus", oMenuDeath);
		
			//Destroys player
			instance_destroy();
		}
	
		//Create bllod particles comming out of player
		part_particles_create(global.partSystem, x, y, global.ptBlood, 15);
	}
	
}
