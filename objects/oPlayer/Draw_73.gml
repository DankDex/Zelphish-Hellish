
if(state == 1) //Normal sprite
	draw_sprite_ext(sPlayer, 0, x, y, 1, 1, angle, c_white, 1);
else if(state == 2) //Hurt sprite
	draw_sprite_ext(sPlayer_hurt, 0, x, y, 1, 1, angle, c_white, 1);
	