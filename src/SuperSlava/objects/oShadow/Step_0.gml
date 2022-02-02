/// @description Insert description here
// You can write your code in this editor
if cause == "drug"
{
	ttl = ttl - 1
	image_alpha -= (alpha_basic/ttl_basic)

	if trimming
	{
		x = xstart + 50*random_range(-1/ttl,1/ttl)
		y = ystart + 50*random_range(-1/ttl,1/ttl)
	
		image_xscale = sign(image_xscale) *  (1 + ((100*1)/ttl)/20)
		image_yscale = (1 + ((100*1)/ttl)/20)
	}
	if ttl == 0
	{
		instance_destroy()
	}
}