
if(instance_exists(oPlayer)){

	#region //Check parameters to start chase

		var _in_range = collision_circle(x,y,detection_range,oPlayer,0,0);
		var _sees_player = !collision_line(x,y,oPlayer.x,oPlayer.y,oWall,0,0);
		
		if(chasing == false && _in_range && _sees_player){
			chasing = true;
		}

	#endregion

	if(pause == false && chasing == true) {

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
		
		var dist = point_distance(x,y,oPlayer.x, oPlayer.y);
		
		if(dist < start_gas_range && _sees_player && _in_range)
			showerTime = true;
		else
			showerTime = false;

	} else { //If pause or not chasing then end path
		path_end();
		
		var dist = point_distance(x,y,oPlayer.x, oPlayer.y);
		
		if(dist < start_gas_range && _sees_player && _in_range)
			showerTime = true;
		else
			showerTime = false;
		
	}

}