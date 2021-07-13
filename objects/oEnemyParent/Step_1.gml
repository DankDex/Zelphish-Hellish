#region // States ============================================================================================

	// Show hurt sprite for 5 frames
	if(state == 2 && hurt_frames>0){
			hurt_frames--;
	}else{
			state = 1;
			hurt_frames = 5;
	}

#endregion