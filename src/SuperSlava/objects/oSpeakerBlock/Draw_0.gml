/// @description Insert description here
// You can write your code in this editor

draw_self()	

if abs(oHero.x - (x+sprite_width/2)) <= 48 and oHero.bbox_bottom == bbox_bottom and !instance_exists(oTextBox) {
	draw_sprite(sSpeakerBlockShader,image_index,x,y)
}