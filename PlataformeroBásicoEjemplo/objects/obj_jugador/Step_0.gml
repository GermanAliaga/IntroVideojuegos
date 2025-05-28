/////////////////// MOVIMIENTO PERSONAJE
velocidady = velocidady + gravedad;
salto = 15;
velocidad = 7;

if(place_meeting(x, y+velocidady, obj_suelo) || place_meeting(x, y+velocidady, obj_plataforma)) // VERIFICACION DE QUE SE ESTÁ TOCANDO EL SUELO
{
	velocidady = 0;
}
else
{
	y += velocidady;
}


if(keyboard_check(vk_left)) // MOVIMIENTO IZQUIERDA
{
	if(place_meeting(x-velocidad, y, obj_plataforma))
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
else if(keyboard_check(vk_right)) // MOVIMIENTO DERECHA
{
	if(place_meeting(x+velocidad, y, obj_suelo) || place_meeting(x, y+velocidady, obj_plataforma))
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
else // SIN MOVIMIENTO
{
	sprite_index = Idle;
}


if(keyboard_check(vk_up) || keyboard_check(vk_space)) // SALTO
{
	if(!place_meeting(x, y-velocidady, obj_plataforma))
	{
		y -= salto;
	}
	else
	{
		y += velocidady;
		salto = 0;
	}
}


/////////////////// VERIFICACION DE QUE NO EXISTEN MÁS OBJETOS EN LA ROOM
if(instance_exists(obj_coleccionable) == false)
{
	//show_message("Recolectaste los objetos");
	//room_restart();
	obj_barril.visible = true;
}


/////////////////// POSICIONAMIENTO Y MOVIMIENTO DE LA CAMARA
var cam = view_camera[0];
var cam_x = x - (camera_get_view_width(cam)/2);
var cam_y = y - (camera_get_view_height(cam)/2);

cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(cam));
cam_y = clamp(cam_x, 0, room_height - camera_get_view_height(cam));

camera_set_view_pos(cam, cam_x, cam_y);