var _s = id
if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
	create_textbox(text_id);
	oHero.event_is_playing = true
	oHero.hsp = 0;
}