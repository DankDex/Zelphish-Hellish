
h_spd = 0; // horizontal speed
v_spd = 0; // vertical speed
walk_speed = 6;
diag_spd = round( walk_speed * (10 / sqrt(200)) ); // diagonal speed
invinsibility_frames = 30;
h_push = 0;
v_push = 0;
hurt_frames = 5;
state = 1;
hp = 100;


// Instances of weapons
weapon = oHandGun;
weapons = [oHandGun, oMachineGun, oSniperGun, oShotGun];
weapon_slot = 1;

for(var i=0; i<array_length_1d(weapons); i++){
	
	instance_create_layer(x,y,"Player", weapons[i]);

}

