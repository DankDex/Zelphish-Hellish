
if(pause == false) {

	// Animation ===========================================================================================
	angle = point_direction(x,y, mouse_x, mouse_y) - 90; //Face player towards mouse

	//draw line between player and mouse
	draw_set_alpha(0.5);
	draw_line_width_color(x, y, mouse_x, mouse_y, 3, c_red, c_white);
	draw_set_alpha(1);

}


//Set sprite
if(state == 1){ //Normal sprite
	draw_sprite_ext(sPlayer, 0, x, y, 1, 1, angle, c_white, 1);
}else if(state == 2){ //Hurt sprite
	draw_sprite_ext(sPlayer_hurt, 0, x, y, 1, 1, angle, c_white, 1);
}else if(state == 3){ //Shooting sprite
	draw_sprite_ext(sPlayer_shooting, 0, x, y, 1, 1, angle, c_white, 1);
}