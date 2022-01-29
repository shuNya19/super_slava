/// @description Insert description here
// You can write your code in this editor

sep = oHero.drug_max / 14
func_a = (oHero.drug_max / 0.49)

// COORDINATION PART
x += (oHero.x - x) / 5;
y += (oHero.y - y) / 5 - (6 + 0.5 * ((oHero.drug_max - oHero.drug_timer) div sep));


// SOUND PART
if (oHero.drug_timer mod 60 == 0) 
{
	audio_sound_gain(snSphere, sqrt(oHero.drug_timer/func_a),0);
	audio_sound_pitch(snSphere, (0.9+((oHero.drug_max-oHero.drug_timer) div sep) / 20));
	audio_play_sound(snSphere, 2, false);
}

// IMAGE PART
image_speed = oHero.drug_timer/(oHero.drug_max/2);
image_xscale = sqrt(oHero.drug_timer/func_a);
image_yscale = sqrt(oHero.drug_timer/func_a);