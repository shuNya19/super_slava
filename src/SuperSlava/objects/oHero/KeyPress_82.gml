/// @description gun equip

gun_equiped = not gun_equiped

audio_sound_pitch(snGunRecharge, 0.8+(gun_equiped*0.4))
audio_play_sound(snGunRecharge, 3, false)