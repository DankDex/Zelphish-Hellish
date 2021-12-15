
if(spawning){
	spawning = false;
	
	var cont = false;
	do{
		var dir = random_range(0, 359);
		var dist = random_range(-200, 200);
		var xx = x+lengthdir_x(dist, dir);
		var yy = y+lengthdir_y(dist, dir);
		
		var inXbounds = xx>0 && xx<room_width;
		var inYbounds = yy>0 && yy<room_height;
		
		if(!place_meeting(xx,yy,oWall) && inXbounds && inYbounds && !collision_line(x,y,xx,yy,oWall,0,0)){
			//Spawn enemy	
			cont = true;
			instance_create_layer(xx,yy,"Enemies",oZombie);
			num_enemies++;
			
			for(var i=0; i<20; i++){
				var xRand = xx + random_range(-10,10);
				var yRand = yy + random_range(-10,10);
				part_particles_create(global.partSystem, xRand, yRand, global.ptItemAura, 5);
			}
			
		}
		
	}until(cont);

	alarm[1] = 180;
}else{
	alarm[1] = 10;
}