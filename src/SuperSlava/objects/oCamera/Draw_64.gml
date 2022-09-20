/// @description Insert description here
// You can write your code in this editor


var y_deb = bbox_top - camera_get_view_y(cam) - view_h_half
var x_deb = x - camera_get_view_x(cam) - view_w_half


if (oHero.drug)
{
	sep = oHero.drug_max / 1.5
	draw_set_alpha(1.5 - (oHero.drug_max-oHero.drug_timer) / sep)
	draw_sprite(sCameraDrug, 0, x_deb+view_w_half-random_range(0,12),y_deb+view_h_half)
	draw_set_alpha(1)
}
