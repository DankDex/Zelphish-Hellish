
if(instance_exists(oPlayer) && !pause){

	if(big == false){ //Zoom in
		big = true;
	
		x = view_wport[0] - 600;
		scale_mult_big = 3;
	
	}else{ //Zoom out
		big = false;	
	
		x = view_wport[0] - 300;
		scale_mult_big = 1.5;
	
	}

}