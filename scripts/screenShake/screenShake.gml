// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenShake(){
	if argument0=true{
	    __angle=random_range(-0.5,0.5)
	    camera_set_view_angle(view_camera[0],__angle);
	}else
	if argument0=false{
	    camera_set_view_angle(view_camera[0],0);
	}
}