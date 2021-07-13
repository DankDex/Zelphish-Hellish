if(pause == false){

// Check id it's in the room
if(x<0 || x>room_width) instance_destroy();
if(y<0 || y>room_height) instance_destroy();

var _rr = randomRange;

for(var i=0; i<numberPellets; i++){
	
	bullet = instance_create_layer(oPlayer.x,oPlayer.y,"Player",oShotGunBulletPellet);

	var bullet_damage = damage/numberPellets;

	with(bullet){
	
		randomize();
	
		angle = point_direction(x,y,mouse_x,mouse_y)+ random_range(-_rr, _rr);	
		spd = 30;
		image_angle = angle - 90;
		damage = bullet_damage;
	
	}
	
}

instance_destroy();

}
