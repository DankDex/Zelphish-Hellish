// Push self to opposite direction of player

var _dir = point_direction(x,y,other.x,other.y);
h_push = -lengthdir_x(push, _dir);
v_push = -lengthdir_y(push, _dir);
	
if(!place_meeting(x+h_push,y,oWall)) x += h_push;
if(!place_meeting(x,y+v_push,oWall)) y += v_push;
