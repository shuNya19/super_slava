//if (instance_exists(follow))
//{
//	xTo = follow.x;
//	yTo = follow.y;
//}


//Update object pos



if count == 0 {
	
	if grave_stage == 0 {
		if skip == 0 {
			grave_stage = 1
			count = 240
		}
		else if skip == 1 {
			count = 0
			grave_stage = 7
			accept = instance_create_layer(x-32, y+4, "UI", oAccept)
			object_set_visible(oAccept, false)
			x = 1020
		}
	}
	
	if grave_stage == 1 {
		x += (xTo - x) / 100
	} 
	
	if x+view_w_half >= 1259 and grave_stage == 1 {
		grave_stage = 2
		x = 1260-view_w_half
		audio_play_sound(sndZoom, 3, false)
		if skip == 0 then count = 90
	} 
	
	else if grave_stage == 2 {
		if camera_get_view_width(cam) <= 240.5 and grave_stage == 2 {
			camera_set_view_size(cam, 240, 135)
			grave_stage = 3
			if skip == 0 then count = 180
		}
		var new_width = camera_get_view_width(cam) + (widthTo - camera_get_view_width(cam))/10
		var new_height = camera_get_view_height(cam) + (heightTo - camera_get_view_height(cam))/10
		camera_set_view_size(cam, new_width, new_height)
		view_w_half = camera_get_view_width(cam) * 0.5;
		view_h_half = camera_get_view_height(cam) * 0.5;
		y += (yTo - y) / 10
	} 
	
	else if grave_stage == 3 {
		grave_stage = 4
		audio_play_sound(sndVibrating, 2, true)
		if skip == 0 then count = 240
	} 
	
	else if grave_stage == 4 {
		grave_stage = 5
	}
	
	if grave_stage == 6 {
		if camera_get_view_width(cam) >= 479.5 {
			camera_set_view_size(cam, 480, 270)
			grave_stage = 7
			exit
		}
		var new_width = camera_get_view_width(cam) + (480 - camera_get_view_width(cam))/10
		var new_height = camera_get_view_height(cam) + (270 - camera_get_view_height(cam))/10
		camera_set_view_size(cam, new_width, new_height)
		view_w_half = camera_get_view_width(cam) * 0.5;
		view_h_half = camera_get_view_height(cam) * 0.5;
		y += (825 - y) / 10
	} 
	
	if grave_stage == 7
	{
		grave_stage = 8
		show_debug_message("accept clicked")
		create_textbox(oAccept.text_id);
	}
	
	if grave_stage == 8 
	{
		if !instance_exists(oTextBox){
			grave_stage = 9
			count = 400
		}
	} 
	
	else if grave_stage == 9
	{
		room_goto(r_first)
	}
		
} else {
	count -= 1
}
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);