/// @description float

if image_xscale < 1
{
	image_xscale = image_xscale + 0.01
	image_yscale = image_yscale + 0.01
	y = y - 0.4
	if (image_xscale == 1) instance_activate_object(child)
}
else
{	
	y = (ystart-24) + sin(get_timer()/500000)*5;
	child.y = bbox_bottom
}