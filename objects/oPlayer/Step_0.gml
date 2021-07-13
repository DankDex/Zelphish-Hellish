
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

if(h_push != 0)
	h_push = 0;
if(v_push != 0)
	v_push = 0;

// Collisions ==========================================================================================

if(place_meeting(x+h_spd,y,oWall)){
	while(!place_meeting(x+sign(h_spd), y, oWall)){
		x += sign(h_spd);	
	}
	h_spd = 0;
}
x += h_spd;

if(place_meeting(x,y+v_spd,oWall)){
	while(!place_meeting(x, y+sign(v_spd), oWall)){
		y += sign(v_spd);	
	}
	v_spd = 0;
}
y += v_spd;


// State ===============================================================================================

if(invinsibility_frames<30){
	invinsibility_frames++;
}

if(state = 2){ // Hurt
	
	if(hurt_frames>0){
		hurt_frames--;
	}else{
		state = 1;
		hurt_frames = 5;
	}	
	
}

// Switch Weapons ===========================================================================================
weapon_slot = keyboard_get_number()-1;

if(weapon_slot>-1 && weapon_slot<array_length_1d(weapons))
	weapon = weapons[weapon_slot];



}