
/// @description Scroll weapon wheel, selecting the current player weapon
/// @para scroll_up - Boolean
function weapon_scroll(_scroll_up){
	if(instance_exists(oPlayer)){
	
		var current_weapon = oPlayer.weapon;
		var index = array_get_index(oPlayer.weapons, current_weapon);
		
		// Validate if it already is on the top most or bottom last depending if it's scrolling up or down
		if(_scroll_up) {
			if(index > 0) {
				index --;
				oPlayer.weapon = oPlayer.weapons[index];
			}
		}
		else
		{
			var last_index = array_length(oPlayer.weapons) - 1;
	
			if(index < last_index) {
				index ++;
				oPlayer.weapon = oPlayer.weapons[index];
			}	
		}
	}
}