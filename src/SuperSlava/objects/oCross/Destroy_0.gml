/// @description Insert description here
// You can write your code in this editor


if sound_death {
	audio_sound_pitch(snBreakingBlock, random_range(0.7,1.3))
	audio_play_sound(snBreakingBlock, 2, false)
}

repeat (random_range(4, 8))
{
	instance_create_layer(x+random_range(-4,4), y+random_range(-4,4),"Particles", oCrossPart)	
}