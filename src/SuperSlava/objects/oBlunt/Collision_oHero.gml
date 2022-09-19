/// @description Picking up

audio_play_sound(snBluntPickup,5,false)
oHero.blunt = true
oHero.blunt_timer = oHero.blunt_max
instance_create_layer(x, y , "Hero", oEffectIcon)
instance_destroy()
instance_destroy(child)

