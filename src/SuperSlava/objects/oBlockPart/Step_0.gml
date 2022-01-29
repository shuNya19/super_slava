if (y <= window_get_height())
{
		x = x+hsp
		y = y+vsp
		vsp = vsp + (0.3*random_range(0.5,1.5))
}
else
{
	instance_destroy()
}