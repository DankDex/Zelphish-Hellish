///@description Draw GUI Event of obj_map

if(!pause && instance_exists(oPlayer)){

	scale = 0.04*scale_mult_big;

	draw_set_alpha(map_alpha);

	//Drawing the Background
	draw_set_color(background_color);
	draw_rectangle(x, y, x + width*scale_mult_big, y + height*scale_mult_big, false);
	
	
	//Draw walls
	draw_set_color(c_dkgray);
	for(var i = 0; i < (room_width/64); i++){	
		for(var j = 0; j < (room_height/64); j++){		
			if(wall_draw[i][j]==1){
				current_left = (i*64 + 0) * scale;
				current_top = (j*64 + 0) * scale;
				current_right = (i*64 + 64) * scale;
				current_bottom = (j*64 + 64) * scale;

				draw_rectangle(x + current_left, y + current_top, x + current_right, y + current_bottom, false);
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
			var instance = instance_find(map_object_index, j),
				current_left = instance.bbox_left * scale,
				current_top = instance.bbox_top * scale,
				current_right = instance.bbox_right * scale,
				current_bottom = instance.bbox_bottom * scale;

			draw_rectangle(x + current_left, y + current_top, x + current_right, y + current_bottom, false);
		}
	}

	draw_set_alpha(1);


}