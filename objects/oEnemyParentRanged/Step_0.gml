
if(instance_exists(oPlayer)){

	#region //Check parameters to start chase

		if(chasing == false){
			var _in_range = collision_circle(x,y,detection_range,oPlayer,0,0);
			var _sees_player = !collision_line(x,y,oPlayer.x,oPlayer.y,oWall,0,0);
			if(_in_range && _sees_player && !run_away && !stay_still) chasing = true;
		}

	#endregion
	
	#region //Check parameters to keep distance from player

		var _in_range = collision_circle(x,y,distance_from_player - offset_from_player,oPlayer,0,0);
		var _sees_player = !collision_line(x,y,oPlayer.x,oPlayer.y,oWall,0,0);
		if(_in_range && _sees_player) run_away = true else run_away = false;

	#endregion
	
	#region //Check parameters to stay still

		var _in_range = collision_circle(x,y,distance_from_player,oPlayer,0,0) && !run_away;
		var _sees_player = !collision_line(x,y,oPlayer.x,oPlayer.y,oWall,0,0);
		if(_in_range && _sees_player) stay_still = true else stay_still = false;

	#endregion

	if(pause == false && chasing == true && run_away == false && stay_still == false) {

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

	} else if(run_away == true) {
		
		
		
	} else { //If pause or not chasing then end path
		path_end();
	}
	

}