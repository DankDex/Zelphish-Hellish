
//Checks if magazine can hold more bullets, if player exists, if it isn't already reloading, if it's not paused and if player has the corresponding weapon equipped
if(magazine_check<magazine && instance_exists(oPlayer) && state==1 && pause == false && oPlayer.weapon==object_index){
	state = 2; //Reloading state
}