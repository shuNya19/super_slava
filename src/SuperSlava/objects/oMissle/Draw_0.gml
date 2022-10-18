/// @description Insert description here
// You can write your code in this editor

var cos_angle = (xTo - x) / sqrt(sqr(xTo - x) + sqr(yTo - y))

show_debug_message(cos_angle)
show_debug_message(xTo)
show_debug_message(x)
show_debug_message(yTo)
show_debug_message(y)

draw_sprite_ext(sMissle, 0, x, y, 1, 1, arccos(cos_angle), c_white, 1)