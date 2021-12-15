
if(instance_exists(oPlayer) && distance_to_object(oPlayer)>800){
	instance_deactivate_object(id);
} else if(distance_to_object(oPlayer)<800){
	instance_activate_object(id);	
}

alarm[0] = 5;

