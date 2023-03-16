/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


if position_meeting(mouse_x, mouse_y, id) and instance_exists(oCall)
{
	visible = true
} else {
	visible = false
}


if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
	//show_debug_message("accept clicked")
	//create_textbox(text_id);
}