function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;	
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;	
	
	// variables for every letter/char
	for (var c = 0; c < 500; c++)
	{
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c*20;
		
		shake_text[c, page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
		
		text_spd[c, page_number] = default_text_spd;
		
		pause_text[c, page_number] = false;
		pause_text_max[c, page_number] = 0;
		pause_text_timer[c, page_number] = 0;
	}
	
	txtb_spr[page_number] = sNineSlice;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snDialogueTwo;
}


//--------------------text VFX-------------------//
/// @param 1st char
/// @param last char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){
	
	for (var c = _start; c <= _end; c++)
	{
		col_1[c, page_number-1] = _col1;	
		col_2[c, page_number-1] = _col2;	
		col_3[c, page_number-1] = _col3;	
		col_4[c, page_number-1] = _col4;	
		
	}
	
}

/// @param 1st_char
/// @param last char
function scr_text_float(_start, _end){
	for (var c = _start; c <= _end; c++)
	{
		float_text[c, page_number-1] = true;	
	}
}


/// @param 1st_char
/// @param last char
function scr_text_shake(_start, _end){
	for (var c = _start; c <= _end; c++)
	{
		shake_text[c, page_number-1] = true;	
	}
}

/// @param 1st_char
/// @param last char
/// @param speed
function scr_text_speed(_start, _end, _speed){
	for (var c = _start; c <= _end; c++)
	{
		text_spd[c, page_number-1] = _speed;	
	}
}

/// @param 1st_char
/// @param last char
/// @param pause
function scr_text_pause(_start, _end, _pause){
	for (var c = _start; c <= _end; c++)
	{
		pause_text[c, page_number-1] = true;
		pause_text_max[c, page_number-1] = _pause;	
	}
}


/// @param text
/// @param [character]
/// @param [side]
function scr_text(_text){
	
scr_set_defaults_for_text();	
text[page_number] = _text;

// get character info
if argument_count > 1
{
	switch (argument[1])
	{
		case "purple kid":
		txtb_spr[page_number] = sNineSlice;
		speaker_sprite[page_number] = sHeroSpeak;
		snd[page_number] = snDialogueTwo;
			break;
			
		case "green kid":
		txtb_spr[page_number] = sNineSlice;
		speaker_sprite[page_number] = sHeroSpeakGreen;
		snd[page_number] = snDialogueOne;
			break;
	}
}

if argument_count > 2
{
	speaker_side[page_number] = argument[2]	
}


page_number++;
}






/// @param option
/// @param link_id
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number ++;
}







/// @param text_id
function create_textbox(_text_id){
	with(instance_create_layer(0,0,"TextBoxes",oTextBox))
		{
			scr_game_text(_text_id);
		}
}