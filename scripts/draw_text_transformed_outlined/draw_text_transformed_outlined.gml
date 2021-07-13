///@description draw_text_outlined(x, y, outline_color, color, text, scale, text_angle, offset)
/// @param x
/// @param y
/// @param outline_color
/// @param color
/// @param string
/// @param scale
/// @param angle
/// @param offset
function draw_text_transformed_outlined(xx, yy, outline_color, color, text, scale, text_angle, offset) {
	
	//Outline  
	draw_set_color(outline_color);  
	draw_text_transformed(xx+offset, yy+offset, text, scale, scale, text_angle);  
	draw_text_transformed(xx-offset, yy-offset, text, scale, scale, text_angle);  
	draw_text_transformed(xx,   yy+offset, text, scale, scale, text_angle);  
	draw_text_transformed(xx+offset,   yy, text, scale, scale, text_angle);  
	draw_text_transformed(xx,   yy-offset, text, scale, scale, text_angle);  
	draw_text_transformed(xx-offset,   yy, text, scale, scale, text_angle);  
	draw_text_transformed(xx-offset, yy+offset, text, scale, scale, text_angle);  
	draw_text_transformed(xx+offset, yy-offset, text, scale, scale, text_angle);  
  
	//Text  
	draw_set_color(color);  
	draw_text_transformed(xx, yy, text, scale, scale, text_angle); 

}