
if(pause == false && instance_exists(oPlayer)){

	var _sees_player = !collision_line(x,y,oPlayer.x,oPlayer.y,oWall,0,0);

	#region //Check parameters to start chase

		if(chasing == false){
			var _in_range = collision_circle(x,y,detection_range,oPlayer,0,0);
			if(_in_range && _sees_player && !stay_still){
				chasing = true;
			}
		}

	#endregion
	
	
	#region //Check parameters to stay still

		var _in_range = collision_circle(x,y,distance_from_player,oPlayer,0,0);
		if(_in_range && _sees_player){
			stay_still = true;
		}else{
			stay_still = false;
		}

	#endregion

	if(chasing == true && stay_still == false) {

		// Movement ============================================================================================
		#region // Direct Pathfinding to player

			if(instance_exists(oPlayer)) {
				// A* path finding avoiding walls, target: Player
				path = path_add();
				mp_grid_add_instances(grid, oWall, 1);
				mp_grid_path(grid, path, x, y, oPlayer.x, oPlayer.y, 1);
				path_start(path, spd, 0, 1);
			}

		#endregion

		
	} else { //If in range stop chasing and start shooting
		path_end();
		
		if(_sees_player && firerate_check <= 0){
			firerate_check = firerate;
			
			shoot_bullet(x, y, bullet_damage, bullet_speed, point_direction(x,y,oPlayer.x,oPlayer.y), bullet_type, true, global.ptGunShot);
			
		}else{
			firerate_check--;
		}
		
	}
	

}else{
	path_end();
}