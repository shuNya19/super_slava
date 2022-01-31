/// @description Update camera

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object pos
x += (xTo - x) / 15
y += (yTo - y) / 15

x = clamp(x, view_w_half, room_width-view_w_half)
y = clamp(y, view_h_half, room_height-view_h_half)

//Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);

//if (blunt == true)
//{
//	x = x + sin(get_timer()/500000)*5;
//	y = y + sin(get_timer()/500000)*5;
//	camera_set_view_angle(cam, sin(A/13)*5)
//	A += 1
//}

if layer_exists("Trees") and layer_exists("Hills")
{
	layer_x("Hills", x/3)
	layer_x("Trees", x/2)	
}

// DRUG 

// shaking
if (oHero.drug)
{
	var sep = oHero.drug_max / 3
	x = x + random_range(-(oHero.drug_timer/sep), (oHero.drug_timer/sep));
}

// zoom
//if oHero.drug_timer == oHero.drug_max-1
//{
//	camera_set_view_size(cam, camera_get_view_width(cam)*0.75, camera_get_view_height(cam)*0.75)
//	view_w_half = camera_get_view_width(cam)*0.5
//	view_h_half = camera_get_view_height(cam)*0.5
//}