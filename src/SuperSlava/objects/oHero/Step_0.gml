key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) or keyboard_check(ord("W"));
key_sprint = keyboard_check_pressed(vk_control)
key_shift = keyboard_check(vk_lshift)



var move = key_right - key_left;

if not event_is_playing and not sprinting hsp = move * walksp;

if not sprinting and not event_is_playing vsp = vsp + grv;

#region DASH

if key_sprint and not sprinting and not event_is_playing and sprint_cd == 0
{
	shadows_made = 1
	sprinting = true
	sprint_timer = 35
	x_start = x
	vsp = 0
}


if sprinting
{
	var c = 1
	step = x_start + image_xscale*(-100)/((sprint_timer)-50) 
	if (sprint_timer < 50)
	{
		if abs(step - x) > 16
		{
			while c*16 < abs(step-x)
			{
				if (place_meeting(x+image_xscale*16*c, y, oWall))
				{
					while (!place_meeting(x+image_xscale, y, oWall))
					{
						x = x + image_xscale;
					}
					make_shadows(abs(step - x))
					sprinting = false
					sprint_cd = sprint_cd_max
				}
				c += 1
			}
		}
		if (place_meeting(step, y, oWall))
		{
			while (!place_meeting(x+image_xscale, y, oWall))
			{
				x = x + image_xscale;
			}
			make_shadows(abs(step - x))
			sprinting = false
			sprint_cd = sprint_cd_max
		}
	}
	if sprinting
	{
		if (sprint_timer < 50) x = step
		if sprint_timer == 49.5 sprint_timer += 1
		else sprint_timer += 0.5
		// sound effect
		if (sprint_timer == 43) audio_play_sound(snDash, 2, false)
		// full succesfull sprint
		if (sprint_timer == 54) {sprinting = false; sprint_cd = sprint_cd_max}
		if sprite_index != sHeroJump
		{
			image_speed = 0
			sprite_index = sHeroRun
			image_index = 5
		}
	}
}
#endregion




if (place_meeting(x, y+1, oWall)) && (key_jump) && not sprinting && not event_is_playing
{
	vsp = jump_max;
	audio_play_sound(snJump,10,false)
	instance_create_layer(x,bbox_bottom,"Particles",oeJump)
}


if (place_meeting(x+hsp, y, oWall)) && not sprinting && not event_is_playing
{
	while (!place_meeting(x+sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

// slow moving
if key_shift hsp = hsp / 3;

// adjusting x coord if not sprint
if not sprinting x = x + hsp

// sprint cd count
if sprint_cd != 0 sprint_cd -= 1 


if (place_meeting(x, y+vsp, oWall)) && not sprinting && not event_is_playing
{
	var check_block = instance_place(x, y+vsp, oBlock)
	var check_secret = instance_place(x, y+vsp, oSecret)
	
	
	// GETTING CLOSE
	while (!place_meeting(x, y+sign(vsp), oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	
	
	// CHECK DESTROYING BLOCKS
	if ((check_block != noone) and (check_block.y < y))
	{
		instance_destroy(check_block)
	}
	if ((check_secret != noone) and (check_secret.y < y)) 
	{
		check_secret.breaking = true; check_secret.jump = 2
	}
}

if not sprinting and not event_is_playing y = y + vsp;




//Animation

if (!place_meeting(x,y+1,oWall)) && not sprinting && not event_is_playing
{
	sprite_index = sHeroJump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else if not sprinting and not event_is_playing
{
	if (sprite_index == sHeroJump) 
	{
		instance_create_layer(x,bbox_bottom,"Particles",oeLanding)
		audio_sound_pitch(snLanding, choose(0.6,0.8,1,1.2,1.4))
		audio_play_sound(snLanding, 4, false)
	}
	if drug image_speed = 0.5;
	else image_speed = 1;
	if (hsp == 0)
	{
		if ((sprite_index == sHeroRun) and (temp == 0))
		{
			temp = 1;
			image_index = 9;
		}
		else if (temp == 1)
		{
			temp = 0;
		}
		if (temp == 0) 
		{
			sprite_index = sHeroIdle
		}
	}
	else
	{
		if (sprite_index == sHeroIdle) or (sprite_index == sHeroGun) 
		{
			temp = 1;
			instance_create_layer(x,bbox_bottom,"Particles",oeRunStart)
		}
		sprite_index = sHeroRun;
		if (temp == 1) 
		{
			image_index = 0;
			temp = 0;
		}
		if ((image_index == 9) and (temp == 0)) image_index = 1;
		if ((image_index == 1) or (image_index == 4) or (image_index == 7)) 
		{
			if (sprite_index == sHeroRun) audio_play_sound(choose(snFoot1,snFoot2,snFoot3), 1, false)
		}
	}
}

if (hsp != 0) && (not sprinting) && (not event_is_playing) image_xscale = sign(hsp);







// ATACK

if cross_count != 0 {
	cross_count -= 1
}


if gun_equiped and mouse_check_button_pressed(mb_left) and cross_count == 0 {
	cross_count = cross_count_max
	with instance_create_layer(x, y-2, "Particles", oCross) {
		dir = sign(other.image_xscale)
	}	
}



