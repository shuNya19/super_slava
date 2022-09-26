/// @description Insert description here
// You can write your code in this editor

var y_deb = oCamera.bbox_top - camera_get_view_y(oCamera.cam) - oCamera.view_h_half
var x_deb = oCamera.x - camera_get_view_x(oCamera.cam) - oCamera.view_w_half

var delay = 10

if weapon == "cross" {
	
	x = x_deb + 4
	y = y_deb + 92
	if oHero.cross_count > (oHero.cross_count_max - delay) { 
		image_index = 1
		randomize()
		x += random(2)
		y += random(2)
		draw_self()
	} else { 
		image_index = 0
		draw_self()
		if oHero.cross_count != 0 {
			draw_sprite(sSkillIconProcces, 9 - floor((oHero.cross_count)/((oHero.cross_count_max-delay)/10)), x, y)
		}
	}
}
