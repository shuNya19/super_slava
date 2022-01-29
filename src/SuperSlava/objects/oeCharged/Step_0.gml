/// @description Insert description here
// You can write your code in this editor

// COORDINATION PART
x += (oHero.x - x) / 5;
y += (oHero.y - y) / 5 - (6 + (720 - oHero.drug_timer) / 100);


// SOUND PART
if (oHero.drug_timer mod 60 == 0) 
{
	audio_sound_gain(snSphere, sqrt(oHero.drug_timer/1470),0);
	audio_sound_pitch(snSphere, (0.9+(720-oHero.drug_timer)/1000));
	audio_play_sound(snSphere, 2, false);
}

// IMAGE PART
image_speed = oHero.drug_timer/300;
image_xscale = sqrt(oHero.drug_timer/1470);
image_yscale = sqrt(oHero.drug_timer/1470);