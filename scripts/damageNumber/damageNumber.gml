///@description damageNumber(color, damage, duration, angle, crit, scale)
///@param color
///@param damage
///@param duration
///@param angle
///@param crit
///@param scale
function damageNumber(color, damage, duration, text_angle, crit, scale){
	
	draw_set_font(fDamagePopUp_Small);
	
	if(crit){
		color = c_yellow;
		draw_set_font(fDamagePopUp_Big);
	}
	
	draw_set_color(color);
	
	draw_text_transformed_outlined(x, y+(duration/3), c_black, color, string(damage), scale, text_angle, 2);
	
	duration--;

	draw_set_color(c_black);
	
	return duration;

}