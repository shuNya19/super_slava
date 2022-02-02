/// @description ANY BUFFS CHANGING 

#region DRUG PART

if drug && ((get_timer() mod 2) == 1)
{
	shadow = instance_create_layer(x+random_range(-1,1), y+random_range(-1,1), "Shadows", oShadow)
	with (shadow)
	{
		cause = "drug"
		sprite_index = other.sprite_index
		image_index = other.image_index
		image_speed = 0
		image_blend = choose(c_aqua, c_white)
		image_alpha = 0.5
		trimming = true
		image_xscale = other.image_xscale
		ttl = 100
		alpha_basic = image_alpha
		ttl_basic = ttl
	}
}

if (drug_timer == 1) 
{
	drug = false; 
	walksp = walksp*2; 
	instance_destroy(oeCharged);
	jump_max = -8;
	grv = 0.3;
}

if (drug_timer != 0) {drug_timer -= 1}

#endregion


#region WEED PART

if (blunt_timer == 1)
{
	blunt = false	
}

if (blunt_timer != 0) {blunt_timer -= 1}
#endregion 


#region SPRINT
if sprinting
{
	function make_shadows(changed)
	{
		while abs(step - x_start)-shadows_made*20 -changed >= 20
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
	make_shadows(0)
}
#endregion 
