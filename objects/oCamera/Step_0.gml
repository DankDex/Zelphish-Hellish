
// Doesn't move if game is paused
if(pause == false) {

	var x_offset, y_offset, x_shake, y_shake;

	//If player exists it will smoothly follow it
	if(instance_exists(follow)){
		xTo = follow.x;
		yTo = follow.y;
		
		//Camera slightly moves to the direction of the mouse
		var dist = point_distance(xTo, yTo, mouse_x, mouse_y);
		var dir = point_direction(xTo, yTo, mouse_x, mouse_y);
		x_offset = clamp(-200, lengthdir_x(dist, dir)/5, 200);
		y_offset = clamp(-200, lengthdir_y(dist, dir)/5, 200);
		xTo += x_offset;
		yTo += y_offset;
		
	}

	//Moves closer to the position of the player according to the smoothness variable
	x += (xTo - x)/smoothness;
	y += (yTo - y)/smoothness;

	//Set a random shake each frame; It lasts for a a number of set frames
	if(shake_frames>0){
		x_shake = irandom_range(-4,4);
		y_shake = random_range(-4, 4);
		shake_frames--;
	}else{
		x_shake = 0;
		y_shake = 0;
	}
 
	// Set camera position
	camera_set_view_border(view_camera[0], cam_width, cam_height);
	camera_set_view_size(view_camera[0], cam_width, cam_height);
	camera_set_view_pos(view_camera[0], x + x_shake - (cam_width/(2*scale)), y + y_shake - (cam_height/(2*scale)));




	// Weapon wheel logic calculation for Draw GUI event ===========================================================
	
	var player_weapons = oPlayer.weapons;
	var num_weapons = array_length(player_weapons);
	
	// Weapon scrolling smoothness and scales
	var weapon_smoothness = 0.1;
	var selected_weapon_target_scale = 3;
	var unselected_weapon_target_scale = 1;
	
	var x_offset_smoothness = 0.1;
	var selected_weapon_x_offset = lerp(0, cam_width, 0.01);
	var unselected_weapon_x_offset = 0;
	
	// Slot weapon sizes
	var slot_separation = 6;
	var slot_size = sprite_get_height(sWeaponBox_selected);
	var _size_of_scroll_wheel = 0;

	// Go through each weapon and determine its offset and scale to use on the Draw GUI event
	for(i=0; i<num_weapons; i++){
		
		var weapon_id = player_weapons[i].id;
		
		// Verify is weapon is already in list, if not then add it
		if(!ds_map_exists(weapon_slot_info, weapon_id)) {
			ds_map_add(weapon_slot_info, weapon_id, [unselected_weapon_target_scale, unselected_weapon_x_offset]);
		}
		
		var weapon_scale = weapon_slot_info[? weapon_id][0];
		var x_offset = weapon_slot_info[? weapon_id][1];

		var target_scale = (weapon_id == oPlayer.weapon.id) ? selected_weapon_target_scale : unselected_weapon_target_scale;
		weapon_scale = lerp(weapon_scale, target_scale, weapon_smoothness);
		
		var target_x_offset = (weapon_id == oPlayer.weapon.id) ? selected_weapon_x_offset : unselected_weapon_x_offset;
		x_offset = lerp(x_offset, target_x_offset, x_offset_smoothness);
		
		ds_map_replace(weapon_slot_info, weapon_id, [weapon_scale, x_offset]);
		
		// Calculate full size of scroll wheel to use in drawing GUI
		_size_of_scroll_wheel += slot_size*weapon_scale + slot_separation;
	}
	
	size_of_scroll_wheel = _size_of_scroll_wheel;
	
	
	if(instance_exists(oPlayer)){
		instance_activate_region(oPlayer.x - (cam_width/2), oPlayer.y-(cam_height/2), cam_width, cam_height, true);
	}


}