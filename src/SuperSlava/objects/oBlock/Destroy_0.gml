/// @description Breaking
audio_sound_pitch(snBreakingBlock, random_range(0.7,1.3))
audio_play_sound(snBreakingBlock, 2, false)
repeat (random_range(25,35))
{
	instance_create_layer(x+random_range(-8,8), y+random_range(-8,8),"Particles", oBlockPart)	
}