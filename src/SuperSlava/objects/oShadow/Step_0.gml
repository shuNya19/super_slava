/// @description Insert description here
// You can write your code in this editor
ttl = ttl - 1
image_alpha -= 0.005
x = xstart + 50*random_range(-1/ttl,1/ttl)
y = ystart + 50*random_range(-1/ttl,1/ttl)
// 1 to 3
// 100 to 0
image_xscale = sign(image_xscale) *  (1 + ((100*1)/ttl)/20)
image_yscale = (1 + ((100*1)/ttl)/20)
if ttl == 0
{
	instance_destroy()
}