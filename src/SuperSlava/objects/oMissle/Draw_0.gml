/// @description Insert description here
// You can write your code in this editor

var cos_angle = (xTo - x) / sqrt(sqr(xTo - x) + sqr(yTo - y))
var angle = arccos(cos_angle)*180/pi
if yTo > y {angle = - angle}
show_debug_message("angle:"+string(angle))
show_debug_message("cos:"+string(cos_angle))
draw_sprite_ext(sMissle, 0, x, y, 1, 1, angle, c_white, 1)