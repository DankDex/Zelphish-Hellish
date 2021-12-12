
if(instance_exists(oPlayer)){
	
	//Debug mode
	if(debug==true){
		draw_set_color(c_white);

		draw_text(x, y, "x_offset: "+string(x_offset)+"\ny_offset: "+string(y_offset)+"\nangle: "+string(point_direction(xTo, yTo, mouse_x, mouse_y))+
		"\nh_spd: "+string(oPlayer.h_spd)+"\nv_spd: "+string(oPlayer.v_spd)+
		"\nh_push: "+string(oPlayer.h_push)+"\nv_push: "+string(oPlayer.v_push));
	
		show_debug_overlay(true);
	}
	

}


