
if(instance_exists(oPlayer) && pause == false){
	
	var _gw = display_get_gui_width();
	var _gh = display_get_gui_height();
	
	
	//Allign draw
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	
	// Draw Bullets
	draw_set_color(c_white);
	draw_set_font(fDecrepit30);
	draw_text_transformed_outlined(20, _gh-60, c_black, c_white, string(oPlayer.weapon.magazine_check) + "/" + string(oPlayer.weapon.bullets), 1, 0, 2);

	//Draw fps
	draw_set_font(fArial_16);
	draw_text_transformed_outlined(20, _gh-150, c_black, c_white, "FPS (capped): "+ string(fps) +"\nCPU steps: "+string(fps_real) + " \nNumber of enemies: " + string(instance_number(oEnemyParent)), 1, 0, 2);

	// Weapon name
	draw_set_font(fDecrepit30);
	var _player_weapon_text = oPlayer.weapon.gun_name;
	draw_text_transformed_outlined(20, _gh-100, c_black, c_white, _player_weapon_text, 0.5, 0, 1);

	
	draw_set_halign(fa_left);
	draw_set_color(c_black);


	//Draw Health Bar
	draw_set_font(fDecrepit30);
	draw_healthbar(30, 35, 130, 55, oPlayer.hp, c_dkgray, c_red, c_green, 0, 0, 0);
	draw_sprite_ext(sLifebar,0,30,35,1,1,0,c_white,1);
	draw_text_transformed_outlined(30, 17, c_black, c_white, "Health", 0.4, 0, 1);


	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	draw_set_color(c_black);
	
	//draw instructions
	draw_set_font(fNormal);
	instructions = "Movement : [WASD]\nShooting : left click\nBig Map : [M]\nPause: [ESC]\nGenerate New Map : [V]\nDebug Mode : [Q]";
	draw_text_transformed_outlined(view_wport[0]-160, view_hport[0]-96, c_black, c_white, instructions, 1, 0, 1);

}