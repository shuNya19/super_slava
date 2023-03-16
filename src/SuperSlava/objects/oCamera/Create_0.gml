/// @description Set up camera
//A = 0
cam = view_camera[0];
follow = oHero;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
view_w_half_start = view_w_half;
view_h_half_start = view_h_half;
xTo = xstart;
yTo = ystart;


instance_create_layer(0,0,"Transition",oTransitionEnd)