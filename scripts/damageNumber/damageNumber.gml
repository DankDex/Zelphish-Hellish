///@description damageNumber(color,damage,duration)
///@param color
///@param damage
///@param duration
///@param angle
///@param crit
function damageNumber(color, damage, duration, text_angle, crit){
	
	//draw_text_outlined(x, y, outline_color, color, text, scale, text_angle, offset)
	
	if(crit){
		color = c_yellow;	
	}
	
	draw_set_color(color);
	draw_text_transformed_outlined(x, y+(duration/3), c_black, color, string(damage), 1 + (damage/10), text_angle, 2 + (damage/20));
	
	duration--;

	draw_set_color(c_black);
	
	return duration;

}