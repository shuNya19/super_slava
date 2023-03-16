/// @description Insert description here
// You can write your code in this editor

x = x - 8
y = oCamera.y
show_debug_message(string(x)+" "+string(y))
if (x + sprite_width < camera_get_view_x(view_camera[0])) then instance_destroy()