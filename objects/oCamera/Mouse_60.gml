
////Zoom in
//if(scale<4)
//	scale+=0.1;

if(instance_exists(oPlayer)){
	
	var current_weapon = oPlayer.weapon;
	var index = array_get_index(oPlayer.weapons, current_weapon);
	
	if(index > 0) {
		index --;
		oPlayer.weapon = oPlayer.weapons[index];
	}
	
}