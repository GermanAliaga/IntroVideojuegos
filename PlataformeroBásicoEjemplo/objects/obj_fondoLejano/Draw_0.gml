var ancho = sprite_width;
var offset_x = camera_get_view_x(view_camera[0]) * 0.3;
draw_sprite(Sprt_FondoLejano, 0, -offset_x, 100);
for(var i = 0; i < 5; i++)
{
	draw_sprite(Sprt_FondoLejano, 0, (ancho * i) - offset_x, 100);
}