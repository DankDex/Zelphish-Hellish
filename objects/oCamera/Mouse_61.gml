
////Zoom out
//if(scale>0.75)
//	scale -= 0.1;


if(instance_exists(oPlayer)){
	
	var current_weapon = oPlayer.weapon;
	var index = array_get_index(oPlayer.weapons, current_weapon);
	
	var last_index = array_length(oPlayer.weapons) - 1;
	
	if(index < last_index) {
		index ++;
		oPlayer.weapon = oPlayer.weapons[index];
	}
	
}