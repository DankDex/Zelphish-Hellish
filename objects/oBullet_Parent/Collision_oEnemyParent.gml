
//Destroys itself when it doesn't go through enemies
if(!goes_through_enemies && bullet_from_enemy == false) {
	money += other.money_given;
	instance_destroy();
}
