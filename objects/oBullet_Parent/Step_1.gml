if(pause == false){

x += lengthdir_x(spd, angle);
y += lengthdir_y(spd, angle);

// Check id it's in the room
if(x<0 || x>room_width) instance_destroy();
if(y<0 || y>room_height) instance_destroy();

}