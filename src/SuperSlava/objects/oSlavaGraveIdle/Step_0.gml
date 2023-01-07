/// @description Insert description here
// You can write your code in this editor


if cam.grave_stage == 4 {
	
	sprite_index = sSlavaRinging
	if image_xscale == 1 {
		image_xscale = -1
		audio_play_sound(sndVibrating, 2, 1)
	}
} else if cam.grave_stage == 5 {
	sprite_index = sSlavaPhone 
	if image_xscale == 1 {
		image_xscale = -1
	}
	if image_index >= 11 
	{
		audio_stop_all()
	} else if image_index >= 10 
	{
		image_speed = 0
		if !instance_exists(oCall) {
			instance_create_layer(x+5, y-35, "Instances", oCall)
		}
	}
}
