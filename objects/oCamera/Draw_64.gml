
if(instance_exists(oPlayer) && pause == false){
	
	//Allign draw
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	
	var right_buffer = 320;
	var draw_width_right_buffer = cam_width - ((cam_width*right_buffer)/ratio_width);
	
	// Draw Bullets
	draw_set_color(c_white);
	draw_set_font(fDecrepit30);
	draw_text_transformed_outlined(draw_width_right_buffer, cam_height-60, c_black, c_white, string(oPlayer.weapon.magazine_check) + "/" + string(oPlayer.weapon.bullets), 1, 0, 2);

	//Draw fps
	draw_set_font(fArial_16);
	draw_text_transformed_outlined(draw_width_right_buffer, cam_height-150, c_black, c_white, "FPS (capped): "+ string(fps) +"\nCPU steps: "+string(fps_real) + " \nNumber of enemies: " + string(num_enemies), 1, 0, 2);

	// Weapon name
	draw_set_font(fDecrepit30);
	var _player_weapon_text = oPlayer.weapon.gun_name;
	draw_text_transformed_outlined(draw_width_right_buffer, cam_height-100, c_black, c_white, _player_weapon_text, 0.5, 0, 1);

	
	draw_set_halign(fa_left);
	draw_set_color(c_black);


	//Draw Health Bar
	draw_set_font(fDecrepit30);
	draw_healthbar(30, 35, 130, 55, oPlayer.hp, c_dkgray, c_red, c_green, 0, 0, 0);
	draw_sprite_ext(sLifebar,0,30,35,1,1,0,c_white,1);
	draw_text_transformed_outlined(30, 17, c_black, c_white, "Health", 0.4, 0, 1);
	
	//Draw Money
	draw_text_transformed_outlined(30, 65, c_black, c_white, "Money: " + string(money) + " $", 0.4, 0, 1);

	
	// Weapon scroll wheel
	var slot_separation = 6;
	var slot_size = sprite_get_height(sWeaponBox_selected);
	
	var begin_wheel = cam_height/2 - size_of_scroll_wheel/2;
	var current_wheel_position = begin_wheel;
	
	var player_weapons = oPlayer.weapons;
	var num_weapons = array_length(player_weapons);
	
	for(i=0; i<num_weapons; i++){
		
		var weapon_id = player_weapons[i].id;
		
		var _alpha = 1;
		var weapon_scale = weapon_slot_info[? weapon_id][0];
		var x_offset = weapon_slot_info[? weapon_id][1];
		
		var sprite_to_use = (weapon_id == oPlayer.weapon.id) ? sWeaponBox_selected : sWeaponBox_unselected;
		var weapon_sprite = player_weapons[i].gun_sprite;
		
		draw_sprite_ext(sprite_to_use, 0, 50 + x_offset, current_wheel_position, weapon_scale, weapon_scale, 0, c_white, _alpha );
		draw_sprite_ext(weapon_sprite, 0, 50 + x_offset, current_wheel_position, weapon_scale, weapon_scale, 0, c_white, _alpha );
		
		current_wheel_position += slot_size*weapon_scale + slot_separation;
	}
	
	


	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	draw_set_color(c_black);
	
	//draw instructions
	var instructions_left_buffer = 160;
	var instructions_left_buffer = ((cam_width*instructions_left_buffer)/ratio_width);
	draw_set_font(fNormal);
	var instructions = "Movement : [WASD]\nShooting : left click\nBig Map : [M]\nPause: [ESC]\nGenerate New Map : [V]\nDebug Mode : [Q]";
	draw_text_transformed_outlined(instructions_left_buffer, cam_height-96, c_black, c_white, instructions, 1, 0, 1);

}