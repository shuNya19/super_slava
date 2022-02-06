/// @description Insert description here
// You can write your code in this editor

//if (oHero.drug)
//{
//	sep = oHero.drug_max / 1.5
//	draw_set_alpha(1.5 - (oHero.drug_max-oHero.drug_timer) / sep)
//	draw_sprite(sCameraDrug, 0, x+random_range(-6,6),y)
//	draw_set_alpha(1)
//}

var y_deb = bbox_top - camera_get_view_y(cam) - view_h_half
var x_deb = x - camera_get_view_x(cam) - view_w_half
draw_sprite(sTestGUI, 1, x_deb,y_deb)