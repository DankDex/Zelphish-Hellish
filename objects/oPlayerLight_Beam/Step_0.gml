
//Follow player
light[| eLight.X] = oPlayer.x;
light[| eLight.Y] = oPlayer.y;

//Point beam towards mouse position
light[| eLight.Direction] = point_direction(light[| eLight.X], light[| eLight.Y], mouse_x, mouse_y);