

if(surface_exists(fovsurface)){
	draw_surface(fovsurface,0,0);	
}

/**
draw_set_color(c_white);
draw_set_alpha(0.4);
draw_rectangle(0,0,room_width,room_height,false);
**/

draw_set_alpha(1);


//surface_set_target(fovsurface);

gpu_set_blendmode(bm_normal);

// Remove behind walls
with(oWall){
	
	draw_set_color(c_black);
	
	draw_primitive_begin(pr_trianglestrip);
	
	other_x = other.x;
	other_y = other.y;
	
	draw_vertex(b_left, b_top);
	var dir = point_direction(other_x,other_y, b_left, b_top);
	draw_vertex(x+lengthdir_x(other.shadow_size,dir), y+lengthdir_y(other.shadow_size,dir));
	
	
	draw_vertex(b_left, b_bottom);
	var dir = point_direction(other_x,other_y, b_left, b_bottom);
	draw_vertex(x+lengthdir_x(other.shadow_size,dir), y+lengthdir_y(other.shadow_size,dir));
	
	draw_vertex(b_right, b_top);
	var dir = point_direction(other_x,other_y, b_right, b_top);
	draw_vertex(x+lengthdir_x(other.shadow_size,dir), y+lengthdir_y(other.shadow_size,dir));
	
	draw_vertex(b_right, b_bottom);
	var dir = point_direction(other_x,other_y, b_right, b_bottom);
	draw_vertex(x+lengthdir_x(other.shadow_size,dir), y+lengthdir_y(other.shadow_size,dir));
	
	draw_primitive_end();
}



gpu_set_blendmode(bm_normal);
//surface_reset_target();

draw_set_alpha(1);



















