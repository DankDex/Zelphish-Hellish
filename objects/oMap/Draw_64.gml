///@description Draw GUI Event of obj_map

if(!pause && instance_exists(oPlayer)){

	scale = 0.05*scale_mult_big;

	draw_set_alpha(map_alpha);

	//Drawing the Background
	draw_set_color(background_color);
	draw_circle(x + width*scale_mult_big/2, y + height*scale_mult_big/2, 490*0.1*scale_mult_big, false);
	//draw_rectangle(x, y, x + width*scale_mult_big, y + height*scale_mult_big, false);
	
	
	//Draw walls
	draw_set_color(c_dkgray);
	for(var i = 0; i < (room_width/64); i++){	
		for(var j = 0; j < (room_height/64); j++){		
			if(wall_draw[i][j]==1){
				
				if(point_distance(oPlayer.x, oPlayer.y, i*64, j*64) <= 800){
					
					var playerX = oPlayer.x*scale;
					var playerY = oPlayer.y*scale;
					
					current_left = (i*64 + 0) * scale - playerX + width*scale_mult_big/2;
					current_top = (j*64 + 0) * scale - playerY + height*scale_mult_big/2;
					current_right = (i*64 + 64) * scale - playerX + width*scale_mult_big/2;
					current_bottom = (j*64 + 64) * scale - playerY + height*scale_mult_big/2;

					draw_rectangle(x + current_left, y + current_top, x + current_right, y + current_bottom, false);
				}
			}
		}
	}
	draw_set_color(background_color);
	

	//Drawing Instances
	for(var i = 0; i < array_length_1d(objects_to_draw); i += 2) {
		var map_object_index = objects_to_draw[i],
			map_object_color = objects_to_draw[i + 1];
	
		draw_set_color(map_object_color);
	
		for(var j = 0; j < instance_number(map_object_index); j++) {
			var instance = instance_find(map_object_index, j);
			
			if(point_distance(oPlayer.x, oPlayer.y, instance.x, instance.y) <= 800){
			
				var playerX = oPlayer.x*scale;
				var playerY = oPlayer.y*scale;
			
				current_left = (instance.bbox_left) * scale - playerX + width*scale_mult_big/2;
				current_top = (instance.bbox_top) * scale - playerY + height*scale_mult_big/2;
				current_right = (instance.bbox_right) * scale - playerX + width*scale_mult_big/2;
				current_bottom = (instance.bbox_bottom) * scale - playerY + height*scale_mult_big/2;

				draw_rectangle(x + current_left, y + current_top, x + current_right, y + current_bottom, false);
			}
		}
	}

	draw_set_alpha(1);
	
	draw_sprite_ext(sOutline_circle,0,x + width*scale_mult_big/2, y + height*scale_mult_big/2, scale_mult_big, scale_mult_big, 0, c_white, 1);


}