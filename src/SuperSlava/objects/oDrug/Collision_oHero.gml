/// @description Picking up

audio_play_sound(snBluntPickup,5,false)
if (not oHero.drug) oHero.walksp = oHero.walksp / 2
oHero.drug = true
oHero.drug_timer = oHero.drug_max
if instance_exists(oeCharged) instance_destroy(oeCharged) 
instance_create_layer(0, 0, "Shadows", oeCharged)
instance_destroy()