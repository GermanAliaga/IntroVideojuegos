var ancho = sprite_width;
var offset_x = camera_get_view_x(view_camera[0]) * 0.6;
draw_sprite(Sprt_FondoCercano, 0, -offset_x, 300);
for(var i = 0; i < 9; i++)
{
	draw_sprite(Sprt_FondoCercano, 0, (ancho * i) -offset_x, 300);
}