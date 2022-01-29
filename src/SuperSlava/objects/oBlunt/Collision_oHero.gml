/// @description Picking up

audio_play_sound(snBluntPickup,5,false)
oCamera.blunt_used = true
instance_destroy()
instance_destroy(child)
