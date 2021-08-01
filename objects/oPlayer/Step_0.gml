
if(pause == false) {

// Movement ============================================================================================

// Check for horizontal and vertical speed
h_spd = ( keyboard_check(ord("D")) - keyboard_check(ord("A")) );
v_spd = ( keyboard_check(ord("S")) - keyboard_check(ord("W")) );


// Check for diagonal speed
if(h_spd!=0 && v_spd!=0){
	h_spd = h_spd * diag_spd;
	v_spd = v_spd * diag_spd;
}else{
	h_spd = h_spd * walk_speed;
	v_spd = v_spd * walk_speed;
}

// Pushing
h_spd += h_push;
v_spd += v_push;

//Reset push forces
if(h_push != 0)
	h_push = 0;
if(v_push != 0)
	v_push = 0;

// Collisions ==========================================================================================

//Horizontal Collision
if(place_meeting(x+h_spd,y,oWall)){
	while(!place_meeting(x+sign(h_spd), y, oWall)){
		x += sign(h_spd);	
	}
	h_spd = 0;
}
x += h_spd;

//Vertical Collision
if(place_meeting(x,y+v_spd,oWall)){
	while(!place_meeting(x, y+sign(v_spd), oWall)){
		y += sign(v_spd);	
	}
	v_spd = 0;
}
y += v_spd;


// State ===============================================================================================

if(invinsibility_frames<30){ //Updates invinsibility frames until player isn't invicible anymore
	invinsibility_frames++;
}

if(state = 2){ // Hurt
	
	//Checks if all hurt frames have passed, updates it and the player state
	if(hurt_frames>0){
		hurt_frames--;
	}else{
		state = 1; //Normal state
		hurt_frames = 5;
	}	
	
}else if(state = 3){ //Shooting
	
	//Checks if all shooting frames have passed, updates it and the player state
	if(shooting_frames>0){
		shooting_frames--;
	}else{
		state = 1; //Normal state
		shooting_frames = 5;
	}	
	
}

// Switch Weapons ===========================================================================================
//Now done in oCamera DrawGUI when drawing the weapons on the sidebar
//weapon_slot = keyboard_get_number()-1; //Choose weapon slot using keyboard numbers

//if(weapon_slot>-1 && weapon_slot<array_length_1d(weapons)) //Checks if weapon is in inventory and equips it
//	weapon = weapons[weapon_slot];



}