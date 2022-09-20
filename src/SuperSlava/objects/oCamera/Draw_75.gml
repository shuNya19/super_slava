/// @description Insert description here
// You can write your code in this editor



var y_deb = bbox_top - camera_get_view_y(cam) - view_h_half
var x_deb = x - camera_get_view_x(cam) - view_w_half


draw_sprite(sTestGUI, 1, x_deb,y_deb)