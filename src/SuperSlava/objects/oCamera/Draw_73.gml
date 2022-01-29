/// @description Insert description here
// You can write your code in this editor

if (oHero.drug)
{
	draw_set_alpha(1.44 - (720-oHero.drug_timer)/500)
	draw_sprite(sCameraDrug, 0, x+random_range(-6,6),y)
	draw_set_alpha(1)
}