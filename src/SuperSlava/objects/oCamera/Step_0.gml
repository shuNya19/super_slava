/// @description Update camera

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

#region BLUNT ZOOM
if oHero.blunt
{
	var dist = abs(cos(((oHero.blunt_max - oHero.blunt_timer)*pi)/(2*60)+pi/2))
  	camera_set_view_size(cam, view_w_half_start*2*(1-dist/2), view_h_half_start*2*(1-dist/2))
	view_w_half = camera_get_view_width(cam)*0.5
	view_h_half = camera_get_view_height(cam)*0.5
}
if oHero.blunt_timer == 1
{
	view_w_half = view_w_half_start
	view_h_half = view_h_half_start
	camera_set_view_size(cam, view_w_half_start*2, view_h_half_start*2)
}
#endregion

//Update object pos
x += (xTo - x) / 15
y += (yTo - y) / 15

x = clamp(x, view_w_half, room_width-view_w_half)
y = clamp(y, view_h_half, room_height-view_h_half)

//Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);


// PARALLAX
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

