accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0])+144;

//---------------setup---------------//
if setup == false
{
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop throw the pages
	for(var p = 0; p < page_number; p++)
	{
		text_length[p] = string_length(text[p])
		
		text_x_offset[p] = 44;
		
		for (var c = 0; c < text_length[p]; c++)
		{
			var _char_pos = c+1;
			
			char[c, p] = string_char_at(text[p], _char_pos);
			
			// get current width of the line
			var _txt_up_yo_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_yo_char) - string_width( char[c, p])
			
			// get last free space
			if char[c, p] = " " { last_free_space = _char_pos + 1};
			
			//get the line breaks
			if _current_txt_w - line_break_offset[p] > line_width
			{
				line_break_pos[line_break_num[p], p] = last_free_space;
				line_break_num[p] ++;
				var _txt_up_to_last_space = string_copy(text[p], 1, last_free_space);
				var _last_free_space_string = string_char_at( text[p], last_free_space);
				line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
			}
		}
		
		for  (var c = 0; c < text_length[p]; c++)
		{
			var _char_pos = c +1;
			var _txt_x = textbox_x + text_x_offset[p]+border;
			var _txt_y = textbox_y + border;
			var _txt_up_yo_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_yo_char) - string_width( char[c, p]);
			var _txt_line = 0;
			
			//compensate for string breaks
			for (var lb = 0; lb < line_break_num[p]; lb++)
			{
				// if the current looping char is after a line break
				if _char_pos >= line_break_pos[lb, p]
				{
					var _str_copy = string_copy(text[p], line_break_pos[lb, p], _char_pos-line_break_pos[lb, p]);
					_current_txt_w = string_width(_str_copy)
					
					// record the "line" this char should be on
					_txt_line = lb + 1;  // + 1 since lb starts at 0
				}
			}
			char_x[c, p] = _txt_x + _current_txt_w;
			char_y[c, p] = _txt_y + _txt_line*line_sep
			
		}
	}
}


//---------------typing the text---------------//
if draw_char < text_length[page]
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//---------------flip through pages---------------//
if accept_key
{
	// if typing is done
	if draw_char == text_length[page]
	{
		// next page
		if page < page_number -1 
		{
			page ++;
			draw_char = 0;
		}
		// destroy textbox
		else
		{
			//link text for options
			if option_number > 0 
			{
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();
		}
	}
	// if not done typing
	else
	{
		draw_char = text_length[page];
	}
}



//---------------draw the textbox---------------//
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
// back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);



//---------------options---------------//
if draw_char == text_length[page] && page == page_number - 1
{
	
	// option select
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number-1);
	
	// draw the option
	var _op_space = 15;
	var _op_bord = 4;
	for (var op = 0; op < option_number; op++)
	{
		var _o_w = string_width(option[op]) +_op_bord*2;
		draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space - 1)/txtb_spr_h, 0, c_white, 1);
		
		//the arrow
		if option_pos == op
		{
			draw_sprite(sTextboxArrow, 0, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op + 2);	
		}
		
		draw_text_colour(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op + 2, option[op], c_white, c_white, c_white, c_white, 1);
	}
}



//---------------draw the text---------------//
for (var c = 0; c < draw_char; c ++)
{
	draw_text_color(char_x[c, page], char_y[c,page], char[c, page], c_white, c_white, c_white, c_white, 1)	
}