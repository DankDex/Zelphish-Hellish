
if(!pause && instance_exists(oPlayer)){
	
	weapon = oPlayer.weapon;
	
	
	with(weapon){
	
		if(bullets<bullets_total){
		
			var _fill = bullets_total/2; //Ammobox fills half of total gun ammo
		
			if((_fill+bullets) > bullets_total) //If the fill surpasses the maximum amount of bullets then give just fill the bullets to the maximum amount
				bullets = bullets_total;
			else
				bullets += _fill; //Add the fill to the current amount of bullets
			
			instance_destroy(other);
			
		}
		
	}
	
	
}