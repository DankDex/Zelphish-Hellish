
if(other.object_index != oGasArea){

	shoot_bullet(x,y,10,0,0,oExplosion,true,global.ptEmpty);
	shoot_bullet(x,y,10,0,0,oExplosion,false,global.ptEmpty);

	instance_destroy();

}