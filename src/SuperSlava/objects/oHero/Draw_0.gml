/// @description Insert description here
// You can write your code in this editor

/// SHADER MOMENT
//dis = sin(get_timer()/500000);
//if (shader == 1) {
//  shader_set(sh_aberration);
//  shader_set_uniform_f(dis_u, dis);
//}
//draw_self();
//shader_reset();



if blunt
{
	var dist = cos(((blunt_max - blunt_timer)*pi)/(2*60)+pi/2)
	var count = 0
	repeat (9)
	{
		count += 1
		draw_sprite_ext(sprite_index, image_index, x+((9-count)*10*dist), y, image_xscale, image_yscale, 0, c_white, 1 - ((9-count)/10))
		draw_sprite_ext(sprite_index, image_index, x-((9-count)*10*dist), y, image_xscale, image_yscale, 0, c_white, 1 - ((9-count)/10))
	}
	audio_sound_pitch(snBlunt, 0.8)
	if dist == 0 audio_play_sound(snBlunt, 2, false)
}


draw_self()