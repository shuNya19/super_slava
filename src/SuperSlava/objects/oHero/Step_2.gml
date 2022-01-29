/// @description SHADOW BIRTH

if weed && ((get_timer() mod 2) == 1)
{
	shadow = instance_create_layer(x+random_range(-1,1), y+random_range(-1,1), "Shadows", oShadow)
	with (shadow)
	{
		sprite_index = other.sprite_index
		image_index = other.image_index
		image_speed = 0
		image_alpha = 0.5
		image_xscale = other.image_xscale
		image_blend = choose(c_aqua, c_white)
		ttl = 100
	}
}

if (weed_timer = 1) {weed = false; walksp = walksp*2}
if (weed_timer != 0) {weed_timer = weed_timer - 1}