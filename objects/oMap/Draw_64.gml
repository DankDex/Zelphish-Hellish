///@description Draw GUI Event of obj_map

if(pause == false){

scale = 0.05*scale_mult_big;

draw_set_alpha(0.7);

//Drawing the Background
draw_set_color(background_color);
draw_rectangle(x, y, x + width*scale_mult_big, y + height*scale_mult_big, false);

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

//draw instructions
draw_set_font(fNormal);
instructions = "Movement : [WASD]\nShooting : left click\nBig Map : [M]\nPause: [ESC]\nGenerate New Map : [V]\nDebug Mode : [Q]";
draw_text_transformed_outlined(view_wport[0]-160, view_hport[0]-96, c_black, c_white, instructions, 1, 0, 1);


draw_set_alpha(1);


}