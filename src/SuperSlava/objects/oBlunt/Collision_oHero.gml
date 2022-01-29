/// @description Picking up

audio_play_sound(snBluntPickup,5,false)
if (not oHero.weed) oHero.walksp = oHero.walksp / 2
oHero.weed = true
oHero.weed_timer = 720
if instance_exists(oeCharged) instance_destroy(oeCharged) 
instance_create_layer(0, 0, "Shadows", oeCharged)
instance_destroy()
instance_destroy(child)