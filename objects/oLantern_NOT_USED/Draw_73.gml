if(instance_exists(oPlayer)){

// Draw behind player

draw_set_alpha(0.9);
draw_set_color(c_black);
draw_primitive_begin(pr_trianglefan);
draw_vertex(oPlayer.x,oPlayer.y);

fovarc = 120;

if(instance_exists(oPlayer) && pause == false){
	fov_offset = point_distance(oPlayer.x, oPlayer.y, mouse_x, mouse_y) * 2;
}

fovarc += (fovarc - fov_offset)/10;
fovarc = clamp(fovarc, 10, 180);


var fovarcprocessed = fovarc/10;
for(i=0; i<=720-fovarcprocessed*20; i++){
	
	xx = lengthdir_x(room_width, (i/2)+angle+(fovarc/2));
	yy = lengthdir_y(room_width, (i/2)+angle+(fovarc/2));
	draw_vertex(x+xx, y+yy);
	
}

draw_primitive_end();

draw_set_alpha(1);

}
