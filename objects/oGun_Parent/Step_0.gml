if(pause == false) {
	
if(firerate_check<firerate) firerate_check++;

if(state==2){
	if(reloading_frames_check>0)
		reloading_frames_check--;
	else{
		
		bullets_to_reload = magazine - magazine_check;
	
		if(bullets>=bullets_to_reload){
			bullets -= bullets_to_reload;
			magazine_check += bullets_to_reload;
		}else{
			magazine_check += bullets;
			bullets = 0;
		}
		
		reloading_frames_check=reloading_frames;
		state = 1;
	}
}

}