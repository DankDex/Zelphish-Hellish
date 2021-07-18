
if(instance_exists(oPlayer) && pause == false){
	
	//Allign draw
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	
	// Draw Bullets
	draw_set_color(c_white);
	draw_set_font(fBullets);
	//draw_text_outlined(x, y, outline_color, color, text, xscale, yscale, text_angle, offset)
	draw_text_transformed_outlined(20, 55, c_black, c_white, string(oPlayer.weapon.magazine_check) + "/" + string(oPlayer.weapon.bullets), 1, 0, 2);

	//Draw fps
	draw_set_font(fArial_16);
	draw_text_transformed_outlined(20, 100, c_black, c_white, "FPS: "+string(fps), 1, 0, 2);
	draw_set_font(fBullets);

	// Weapon name
	draw_set_font(fBullets);
	player_weapon_text = object_get_name(oPlayer.weapon.object_index);
	draw_text_transformed_outlined(20, 20, c_black, c_white, string_delete(player_weapon_text, 1, 1), 0.5, 0, 1);

	
	draw_set_halign(fa_center);
	draw_set_color(c_black);

	//Draw Health Bar
	draw_healthbar(view_wport[0]/2-200, 10, view_wport[0]/2+200, 60, oPlayer.hp, c_dkgray, c_red, c_blue, 0, 1, 1);
	draw_set_color(c_white);
	draw_text_transformed_outlined(view_wport[0]/2, 37, c_black, c_white, oPlayer.hp, 0.6, 0, 2);

	draw_set_font(fNormal);
	draw_set_color(c_black);
	
	//draw instructions
	draw_set_font(fNormal);
	instructions = "Movement : [WASD]\nShooting : left click\nBig Map : [M]\nPause: [ESC]\nGenerate New Map : [V]\nDebug Mode : [Q]";
	draw_text_transformed_outlined(view_wport[0]-160, view_hport[0]-96, c_black, c_white, instructions, 1, 0, 1);

}