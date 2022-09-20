/// @description Insert description here
// You can write your code in this editor

if oHero.sprinting and not get_hit {
	get_hit = true
	sprite_index = sWitchHit
	image_index = 0
	image_speed = 1
	prev_hp = hp
	hp -= oHero.sprint_damage
}
