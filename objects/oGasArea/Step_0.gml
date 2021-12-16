
for(var i=0; i<5; i++){
	var xx = x+random_range(-64,64);
	var yy = y+random_range(-64,64);
	
	if(point_distance(x,y,xx,yy)<64)
		part_particles_create(global.partSystem, xx, yy, global.ptGas, 3);
}
	
if(frames_until_it_disapears<=0){
	instance_destroy();	
}else{
	frames_until_it_disapears--;
}