/// @description drawing health+mana

draw_self()

var health_length = floor((mother.hp * 30) / mother.hp_max)
var mana_length = floor((mother.mana * 26) / mother.mana_max)
if health_length < 0 health_length = 0

var x_temp = x-sprite_width/2+1
var y_temp = y-sprite_height/2+1

if mother.get_hit {
	var last_health = floor((mother.prev_hp * 30) / mother.hp_max)
	draw_rectangle_colour(x_temp, y_temp, x_temp-1+last_health, y_temp+2, c_white, c_white, c_white, c_white, false)
}

draw_rectangle_colour(x_temp, y_temp, x_temp-1+health_length, y_temp+2, c_lime, c_lime, c_lime, c_lime, false)

if mother.attacking {
	var last_mana = floor((mother.prev_mana * 26) / mother.mana_max)
	draw_rectangle_colour(x_temp+2, y_temp+4, x_temp+1+last_mana, y_temp+4, c_white, c_white, c_white, c_white, false)
}

draw_rectangle_colour(x_temp+2, y_temp+4, x_temp+1+mana_length, y_temp+4, c_aqua, c_aqua, c_aqua, c_aqua, false)