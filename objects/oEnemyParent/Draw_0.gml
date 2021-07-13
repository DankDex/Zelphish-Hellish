// Animation ===========================================================================================
if(instance_exists(oPlayer) && chasing == true) // Looking at enemy
	angle = point_direction(x,y, oPlayer.x, oPlayer.y) - 90;

if(state == 1) // Normal
	draw_sprite_ext(sprite_normal, 0, x, y, 1, 1, angle, c_white, 1);
else if(state == 2) // Hurt
	draw_sprite_ext(sprite_hurt, 0, x, y, 1, 1, angle, c_white, 1);

// Draw lifeBar after it gets hurt
if(hp < hp_total){
	
	draw_set_color(c_black);
	draw_rectangle(x-15, y-25, x+15, y-20, false);
	draw_set_color(c_green);
	scale_bar = hp*30;
	draw_rectangle(x-15, y-25, x-15+(scale_bar/hp_total), y-20, false);
	draw_set_color(c_black);

}

