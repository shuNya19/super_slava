/// @description Insert description here
// You can write your code in this editor


var y_deb = oCamera.bbox_top - camera_get_view_y(oCamera.cam) - oCamera.view_h_half
var x_deb = oCamera.x - camera_get_view_x(oCamera.cam) - oCamera.view_w_half

if skill == "sprint" {
	
	x = x_deb + 4
	y = y_deb + 64
	if oHero.sprinting { 
		image_index = 1
		randomize()
		x += random(2)
		y += random(2)
	} else { 
		image_index = 0
	}
	draw_self()
	
	if oHero.sprint_cd != 0 {
		draw_sprite(sSkillIconProcces, 9 - floor(oHero.sprint_cd/(oHero.sprint_cd_max/10)), x, y)
	}
}