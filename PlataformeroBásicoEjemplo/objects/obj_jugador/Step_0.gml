if(keyboard_check(vk_left))
{
	x-= velocidad;
	image_xscale = -1;
	sprite_index = Walk;
}
if(keyboard_check(vk_right))
{
	x+= velocidad;
	image_xscale = 1;
	sprite_index = Walk;
}
if(keyboard_check(vk_down))
{
	y+= velocidad;
}
if(keyboard_check(vk_up))
{
	y-= velocidad;
}

if(instance_exists(obj_coleccionable) == false)
{
	show_message("Recolectaste los objetos");
	room_restart();
}