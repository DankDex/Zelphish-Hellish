
if(pause == false) {
	
	if(firerate_check<firerate) firerate_check++; //Increment the frames passed since the last shot

	if(state==2){ //If reloading
		
		if(reloading_frames_check>0){ //If it's still reloading update the frames since the start of the reload
			reloading_frames_check--;
			
		}else{ //If it's done reloading update the bullets in magazine, bullets left and set the reloading timer to default
		
			bullets_to_reload = magazine - magazine_check; //Calculate the bullets to put in magazine; ex: if it reloads with 6 bullets in chamber and magazine only holds 10 them it should only put 4 bullets in magazine
	
			if(bullets>=bullets_to_reload){ //If it has enough bullets in total to fill the magazine then do it
				
				bullets -= bullets_to_reload; //Decrement the bullets out of the bullet total
				magazine_check += bullets_to_reload; //Fill the magazine
				
			}else{ //If it doesn't have enough bullets to fill the magazine it simply puts the remaining bullets into the magazine
				
				magazine_check += bullets;
				bullets = 0;
				
			}
		
			reloading_frames_check=reloading_frames; //Defaults the realoading frames
			state = 1; //Normal state
		}
		
	}

}