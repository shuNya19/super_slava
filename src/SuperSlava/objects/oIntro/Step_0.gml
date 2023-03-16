/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
	oGraveCamera.skip = 0
}
if oGraveCamera.skip != 2 {
	instance_destroy(id)
}