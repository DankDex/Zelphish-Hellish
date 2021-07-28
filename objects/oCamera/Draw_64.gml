
if(instance_exists(oPlayer) && pause == false){
	
	//Allign draw
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	
	// Draw Bullets
	draw_set_color(c_white);
	draw_set_font(fPlasmDrip36);
	//draw_text_outlined(x, y, outline_color, color, text, xscale, yscale, text_angle, offset)
	draw_text_transformed_outlined(20, camera_get_view_height(camera)+220, c_black, c_white, string(oPlayer.weapon.magazine_check) + "/" + string(oPlayer.weapon.bullets), 1, 0, 2);

	//Draw fps
	draw_set_font(fArial_16);
	draw_text_transformed_outlined(20, camera_get_view_height(camera)+40, c_black, c_white, "FPS: "+string(fps) + "Number of enemies: " + string(instance_number(oEnemyParent)), 1, 0, 2);
	draw_set_font(fPlasmDrip36);

	// Weapon name
	draw_set_font(fPlasmDrip36);
	player_weapon_text = object_get_name(oPlayer.weapon.object_index);
	draw_text_transformed_outlined(20, camera_get_view_height(camera)+170, c_black, c_white, string_delete(player_weapon_text, 1, 1), 1, 0, 1);

	
	draw_set_halign(fa_left);
	draw_set_color(c_black);



	//Draw Health Bar
	draw_set_font(fDecrepit30);
	draw_healthbar(30, 35, 130, 55, oPlayer.hp, c_dkgray, c_red, c_green, 0, 0, 0);
	draw_sprite_ext(sLifebar,0,30,35,1,1,0,c_white,1);
	draw_text_transformed_outlined(30, 17, c_black, c_white, "Health", 0.4, 0, 1);
	
	//draw_healthbar(view_wport[0]/2-200, 10, view_wport[0]/2+200, 60, oPlayer.hp, c_dkgray, c_red, c_blue, 0, 1, 1);
	//draw_set_color(c_white);
	//draw_text_transformed_outlined(view_wport[0]/2, 37, c_black, c_white, oPlayer.hp, 0.6, 0, 2);


	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	draw_set_color(c_black);
	
	//draw instructions
	draw_set_font(fNormal);
	instructions = "Movement : [WASD]\nShooting : left click\nBig Map : [M]\nPause: [ESC]\nGenerate New Map : [V]\nDebug Mode : [Q]";
	draw_text_transformed_outlined(view_wport[0]-160, view_hport[0]-96, c_black, c_white, instructions, 1, 0, 1);

}