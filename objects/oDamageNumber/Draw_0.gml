
//Pop-up damage number and returns it's duration according to its damage
duration = damageNumber(color, damage, duration, angle, crit, scale);

if(duration < -120)
	instance_destroy();