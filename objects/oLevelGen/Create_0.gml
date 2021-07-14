randomize();

#macro TILE_SIZE 64

enemies_to_spawn = [oZombie, oZombieSecond];

//======================================================================================================
// Wall generation
for (var i = 0; i < room_width div TILE_SIZE; i++)
{
	for (var j = 0; j < room_height div TILE_SIZE; j++)
	{
		instance_create_layer(i * TILE_SIZE, j * TILE_SIZE, "Instances", oWall);
	}
}

var dir = 0;

repeat (3000)
{
	if (chance(90))
	{
		dir = choose(0, 1, 2, 3) * 90;
	}
	
	var object = instance_place(x, y, oWall);
	
	instance_destroy(object);
	
	instance_create_layer(x, y, "Instances", oPlayable);
	
	x += lengthdir_x(TILE_SIZE, dir);
	y += lengthdir_y(TILE_SIZE, dir);
	
	x = clamp(x, 0 + TILE_SIZE, room_width-TILE_SIZE*2);
	y = clamp(y, 0 + TILE_SIZE, room_height-TILE_SIZE*2);
	
}

//======================================================================================================
// Enemy spawn
if(!testing)
for (var i = 0; i < room_width div TILE_SIZE; i++)
{
	for (var j = 0; j < room_height div TILE_SIZE; j++)
	{
		var indexx = irandom_range(0,1);
		
		// Vai buscar um inimigo á sorte da lista de inimigos
		var _enemy_index = enemies_to_spawn[indexx];
		
		// Spawna o inimigo escolhido
		var _enemy = instance_create_layer(i * TILE_SIZE + 32, j * TILE_SIZE + 32,"Enemies",_enemy_index);
		
		// Caso as condições estejam certas o inimigo mantêm-se, senão ele é destruido
		if(chance(5) && !place_meeting(i * TILE_SIZE, j * TILE_SIZE, oWall) && !collision_circle(i * TILE_SIZE, j * TILE_SIZE, _enemy.detection_range, oPlayer, 0, 0))
		{
			show_debug_message("Enemy spotted");
		}else{
			instance_destroy(_enemy);	
		}
	}
}



//======================================================================================================
// Erasing unnecessary walls

for (var i = 0; i < room_width div TILE_SIZE; i++)
{
	for (var j = 0; j < room_height div TILE_SIZE; j++)
	{
		if(!place_meeting(i * TILE_SIZE, j * TILE_SIZE, oPlayable) && !place_meeting(i * TILE_SIZE + 64, j * TILE_SIZE, oPlayable) &&
		   !place_meeting(i * TILE_SIZE - 64, j * TILE_SIZE, oPlayable) && !place_meeting(i * TILE_SIZE, j * TILE_SIZE + 64, oPlayable) && !place_meeting(i * TILE_SIZE, j * TILE_SIZE - 64, oPlayable))
		{
			var object = instance_place(i * TILE_SIZE, j * TILE_SIZE, oWall);
			with(object){
				instance_destroy();
			}
		}
	}
}


instance_destroy(oPlayable);
