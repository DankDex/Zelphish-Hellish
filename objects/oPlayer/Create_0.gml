
h_spd = 0; // horizontal speed
v_spd = 0; // vertical speed
walk_speed = 6; //Walking speed
diag_spd = round( walk_speed * (10 / sqrt(200)) ); // diagonal speed
invinsibility_frames = 30; //invisibility frames when hit
h_push = 0; //Horizontal push when hit
v_push = 0; //Vertical push when hit
hurt_frames = 5; //Frames where hurt sprite is displayed
shooting_frames = 2; //Frames where shooting sprite is displayed
state = 1; //1-Normal; 2-Hurt; 3-Shooting
hp = 100;


// Instances of weapons
weapon = oHandGun; //Default weapon
weapons = [oHandGun, oMachineGun, oSniperGun, oShotGun, oRocketLauncher]; //Weapons available
//weapons = [oHandGun, oMachineGun, oSniperGun];
weapon_slot = 1; //Weapon slot selected

//Create all weapons in players inventory
for(var i=0; i<array_length_1d(weapons); i++){
	
	instance_create_layer(x,y,"Player", weapons[i]);

}

