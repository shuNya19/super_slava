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

if (drug_used == true)
{
	x = x + sin(get_timer()/500000)*5;
	y = y + sin(get_timer()/500000)*5;
	camera_set_view_angle(cam, sin(A/13)*5)
	A += 1
}