/// @param camera
/// @param x
/// @param y
/// @param x_range
/// @param y_range
function camera_shake(_cam, _x, _y, _xrange, _yrange){
	if _x == true
	{
		_cam.x += random_range(-_xrange, _xrange)	
	}
	if _y == true
	{
		_cam.y += random_range(-_yrange, _yrange)	
	}
}