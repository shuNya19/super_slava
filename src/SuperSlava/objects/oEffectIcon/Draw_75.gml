/// @description Insert description here
// You can write your code in this editor

var y_deb = oCamera.bbox_top - camera_get_view_y(oCamera.cam) - oCamera.view_h_half
var x_deb = oCamera.x - camera_get_view_x(oCamera.cam) - oCamera.view_w_half

if oHero.blunt {
	x = x_deb + 32
	y = y_deb + 0
	image_speed = 0
	image_index = 0
	draw_self()
	draw_sprite(sEffectIconProcces, 19-floor(oHero.blunt_timer/60), x, y)
} if oHero.drug {
	x = x_deb + 0
	y = y_deb + 32
	image_speed = 0
	image_index = 1
	draw_self()
	draw_sprite(sEffectIconProcces, 19-floor(oHero.drug_timer/60), x, y)
}