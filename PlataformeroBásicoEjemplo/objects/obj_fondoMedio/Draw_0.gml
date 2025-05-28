var ancho = sprite_width;
var offset_x = camera_get_view_x(view_camera[0]) * 0.5;
draw_sprite(Sprt_FondoMedio, 0, -offset_x, 200);
for(var i = 0; i < 7; i++)
{
	draw_sprite(Sprt_FondoMedio, 0, (ancho * i) -offset_x, 200);
}