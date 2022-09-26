/// @description Insert description here
// You can write your code in this editor

if (y <= window_get_height())
{
		x = x+hsp
		y = y+vsp
		vsp = vsp + (0.4*random_range(0.5,1.5))
		alpha = alpha - 0.02
}
else
{
	instance_destroy()
}