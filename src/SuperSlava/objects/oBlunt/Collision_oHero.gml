/// @description Picking up

audio_play_sound(snBluntPickup,5,false)
oHero.weed = true
oHero.weed_timer = 720
oHero.walksp = oHero.walksp / 2
instance_destroy()
instance_destroy(child)