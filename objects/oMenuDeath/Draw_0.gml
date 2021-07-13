
// gray out background
draw_set_alpha(0.5);
draw_set_color(c_dkgray);
draw_rectangle(0-1000, 0-1000, room_width+1000, room_height+1000, false);
draw_set_alpha(1);