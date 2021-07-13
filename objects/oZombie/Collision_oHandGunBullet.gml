
if(pause == false) {

#region // calculate damage taken
var crit;

if(chance(10)) {
	hp -= other.damage * 3;
	damage_taken = other.damage * 3;
	crit = true;
}else{
	hp -= other.damage;
	damage_taken = other.damage;
	crit = false;
}
#endregion

show_damage = true;

damage_letter_angle = random_range(0,45);

#region // damage number pop up
numberDamage = instance_create_layer(x, y, "Player", oDamageNumber);
numberDamage.damage = damage_taken;
numberDamage.text_angle = damage_letter_angle;
numberDamage.crit = crit;
#endregion

#region // if died
if(hp<=0){
	part_particles_create(global.partSystem, x, y, global.ptBloodPool, 1);
	part_particles_create(global.partSystem, x, y, global.ptBlood, 15);
	
	instance_destroy();
	oCamera.shake_frames = 5;
}
#endregion

#region // push enemy on hit
h_push = -lengthdir_x(20,point_direction(x,y,other.x,other.y));
v_push = -lengthdir_y(20,point_direction(x,y,other.x,other.y));
	
if(!place_meeting(x+h_push,y,oWall)) x += h_push;
if(!place_meeting(x,y+v_push,oWall)) y += v_push;
#endregion

state = 2;

part_particles_create(global.partSystem, x, y, global.ptBlood, 5);

}