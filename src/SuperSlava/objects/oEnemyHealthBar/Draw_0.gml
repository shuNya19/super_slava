/// @description Insert description here
// You can write your code in this editor


draw_self()
var health_length = floor((mother.hp * 30) / mother.hp_max)
if health_length < 0 health_length = 0

if mother.get_hit {
	var last_health = floor((mother.prev_hp * 30) / mother.hp_max)
	draw_rectangle_colour(x+1, y+1, x+last_health, y+3, c_white, c_white, c_white, c_white, false)
}

draw_rectangle_colour(x+1, y+1, x+health_length, y+3, c_lime, c_lime, c_lime, c_lime, false)