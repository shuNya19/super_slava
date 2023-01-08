/// @description Insert description here
// You can write your code in this editor
if position_meeting(mouse_x, mouse_y, accept) && mouse_check_button_pressed(mb_left)
{
	//create_textbox(text_id);
	oSlavaGraveIdle.image_index = 11
	instance_destroy(accept)
	instance_destroy(decline)
	audio_stop_all()
	oGraveCamera.grave_stage = 6
	instance_destroy()
}

if position_meeting(mouse_x, mouse_y, decline) && mouse_check_button_pressed(mb_left)
{
	//create_textbox(text_id);
	oGraveCamera.grave_stage = 2
	oSlavaGraveIdle.sprite_index = sSlavaIdle
	oSlavaGraveIdle.image_speed = 1
	instance_destroy(accept)
	instance_destroy(decline)
	audio_stop_all()
	instance_destroy()
}