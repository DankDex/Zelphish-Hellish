alarm[0] = 5;
if(instance_exists(oPlayer) && distance_to_object(oPlayer)>500){
	instance_deactivate_object(id);
}