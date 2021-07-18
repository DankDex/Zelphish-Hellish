
if(instance_exists(oPlayer) && pause == false){
	
draw_set_halign(fa_left);
draw_set_valign(fa_center);
	
// Draw Bullets
draw_set_color(c_white);
draw_set_font(fBullets);
//draw_text_outlined(x, y, outline_color, color, text, xscale, yscale, text_angle, offset)
draw_text_transformed_outlined(20, 55, c_black, c_white, string(oPlayer.weapon.magazine_check) + "/" + string(oPlayer.weapon.bullets), 1, 0, 2);

//draw fps
draw_set_font(fArial_16);
draw_text_transformed_outlined(20, 100, c_black, c_white, "FPS: "+string(fps), 1, 0, 2);
draw_set_font(fBullets);

// Weapon name
draw_set_font(fBullets);
player_weapon_text = object_get_name(oPlayer.weapon.object_index);
draw_text_transformed_outlined(20, 20, c_black, c_white, string_delete(player_weapon_text, 1, 1), 0.5, 0, 1);


draw_set_halign(fa_center);


/**
shells_empty = 10 - oPlayer.weapon.magazine_check;
space_between = 14;

for(i=0; i<oPlayer.weapon.magazine_check; i++){
	draw_sprite(sBullet, 0, space_between + i*space_between, 20);
}

for(i=0; i<shells_empty; i++){
	draw_sprite(sBullet_black, 0, space_between + oPlayer.weapon.magazine_check*space_between + i*space_between, 20);
}
**/

draw_set_color(c_black);

draw_healthbar(view_wport[0]/2-200, 10, view_wport[0]/2+200, 60, oPlayer.hp, c_dkgray, c_red, c_blue, 0, 1, 1);
draw_set_color(c_white);
//draw_text(view_wport[0], 35, oPlayer.hp);
draw_text_transformed_outlined(view_wport[0]/2, 37, c_black, c_white, oPlayer.hp, 0.6, 0, 2);

draw_set_font(fNormal);
draw_set_color(c_black);

}