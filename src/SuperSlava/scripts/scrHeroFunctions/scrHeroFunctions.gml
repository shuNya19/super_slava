/// @param changed
function make_shadows(_changed){
	while abs(step - x_start)-shadows_made*20 -_changed >= 20
	{
		shadow = instance_create_layer(x_start+image_xscale*20*shadows_made, y, "Shadows", oShadow)
		with (shadow)
		{
			cause = "drug"
			sprite_index = other.sprite_index
			image_index = other.image_index
			image_speed = 0
			image_blend = c_aqua
			image_alpha = 0.5
			image_xscale = other.image_xscale
			trimming = false
			ttl = other.shadows_made*10
			alpha_basic = image_alpha
			ttl_basic = ttl
		}
		shadows_made += 1
	}
}