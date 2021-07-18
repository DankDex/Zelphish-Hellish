
if(instance_exists(oPlayer)) {
	//draw_sprite_ext(sFog_big, 0, oPlayer.x, oPlayer.y, 0.5, 0.5, 0, 0, 1);

	// Draw reloading bar
	if(oPlayer.weapon.state==2 && oPlayer.weapon.bullets>0){
		draw_set_color(c_black);
		draw_rectangle(oPlayer.x-15, oPlayer.y-25, oPlayer.x+15, oPlayer.y-20, false);
		draw_set_color(c_green);
		scale_bar = oPlayer.weapon.reloading_frames/30;
		draw_rectangle(oPlayer.x-15, oPlayer.y-25, oPlayer.x-15+(oPlayer.weapon.reloading_frames/scale_bar-oPlayer.weapon.reloading_frames_check/scale_bar), oPlayer.y-20, false);
	}

}