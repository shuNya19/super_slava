//if (instance_exists(follow))
//{
//	xTo = follow.x;
//	yTo = follow.y;
//}


//Update object pos



if count == 0 {
	if grave_stage == 0 {
		grave_stage = 1
	}
	if grave_stage == 1 {
		x += (xTo - x) / 100
	} 
	if x+view_w_half >= 1259 and grave_stage == 1 {
		grave_stage = 2
		x = 1260-view_w_half
		audio_play_sound(sndZoom, 3, false)
		count = 90
	} else if grave_stage == 2 {
		var new_width = camera_get_view_width(cam) + (widthTo - camera_get_view_width(cam))/10
		var new_height = camera_get_view_height(cam) + (heightTo - camera_get_view_height(cam))/10
		camera_set_view_size(cam, new_width, new_height)
		view_w_half = camera_get_view_width(cam) * 0.5;
		view_h_half = camera_get_view_height(cam) * 0.5;
		y += (yTo - y) / 10
		if camera_get_view_width(cam) <= 240.5 and grave_stage == 2 {
			camera_set_view_size(cam, 240, 135)
			grave_stage = 3
			count = 180
		}
	} else if grave_stage == 3 {
		grave_stage = 4
		audio_play_sound(sndVibrating, 2, true)
		count = 240
	} else if grave_stage == 4 {
		grave_stage = 5
	}
} else {
	count -= 1
}
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);