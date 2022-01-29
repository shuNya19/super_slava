/// @description Insert description here
// You can write your code in this editor

if (image_index == 12) image_speed = -1

if (image_index == 0) image_speed = 1

if image_xscale < 1
{
	image_xscale = image_xscale + 0.01
	image_yscale = image_yscale + 0.01
	y = y - 0.4
}
else
{	
	y = (ystart-24) + sin((get_timer()*float_change)/500000)*4;
}