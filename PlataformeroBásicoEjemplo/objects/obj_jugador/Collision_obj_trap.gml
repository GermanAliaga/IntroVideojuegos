if(vida >= 1)
{
	vida -= 1;
	room_restart();
}

if(vida == 0)
{
	instance_destroy();
	room_restart();
}