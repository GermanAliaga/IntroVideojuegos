if(vida >= 1)
{
	vida -= 1;
	x = 120;
	y = 530;
}

if(vida == 0)
{
	instance_destroy();
	room_restart();
}