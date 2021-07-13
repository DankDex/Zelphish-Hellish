if(pause == false) {

// Animation ===========================================================================================
angle = point_direction(x,y, mouse_x, mouse_y) - 90;

draw_set_alpha(0.5);
draw_line_width_color(x, y, mouse_x, mouse_y, 3, c_red, c_white);
draw_set_alpha(1);

}

	