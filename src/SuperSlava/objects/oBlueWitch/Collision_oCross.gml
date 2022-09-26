/// @description Insert description here
// You can write your code in this editor


if not get_hit {
	get_hit = true
	sprite_index = sWitchHit
	image_index = 0
	image_speed = 1
	prev_hp = hp
	hp -= oHero.cross_damage
	with instance_create_layer(x, y, "Lost_HP", oLostHp) {
		dir = other.image_xscale
		hsp = random_range(1, 3) *(-1 * dir)
		hp = other.hp - other.prev_hp
	}
}