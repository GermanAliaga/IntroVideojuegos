velocidady = velocidady + gravedad;
salto = 15;
velocidad = 7;

if(place_meeting(x, y+velocidady, obj_suelo))
{
	velocidady = 0;
}
else
{
	y += velocidady;
}

if(keyboard_check(vk_left))
{
	if(place_meeting(x-velocidad, y, obj_suelo))
	{
		velocidad = 0;
	}
	else
	{
		x-= velocidad;
	}
	image_xscale = -1;
	sprite_index = Walk;
}
if(keyboard_check(vk_right))
{
	if(place_meeting(x+velocidad, y, obj_suelo))
	{
		velocidad = 0;
	}
	else
	{
		x += velocidad;
	}
	image_xscale = 1;
	sprite_index = Walk;
}

if(keyboard_check(vk_up) || keyboard_check(vk_space))
{
	if(!place_meeting(x, y-velocidady, obj_suelo))
	{
		y -= salto;
	}
	else
	{
		y += velocidady;
		salto = 0;
	}
}

if(instance_exists(obj_coleccionable) == false)
{
	show_message("Recolectaste los objetos");
	room_restart();
}