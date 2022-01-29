/// @description Insert description here
// You can write your code in this editor

if (oHero.drug)
{
	sep = oHero.drug_max / 1.5
	draw_set_alpha(1.5 - (oHero.drug_max-oHero.drug_timer) / sep)
	draw_sprite(sCameraDrug, 0, x+random_range(-6,6),y)
	draw_set_alpha(1)
}