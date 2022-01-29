key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) or keyboard_check(ord("W"));

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y+1, oWall)) && (key_jump)
{
	vsp = -8;
	audio_play_sound(snJump,10,false)
	instance_create_layer(x,bbox_bottom,"Particles",oeJump)
}

if (place_meeting(x+hsp, y, oWall))
{
	while (!place_meeting(x+sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;


if (place_meeting(x, y+vsp, oWall))
{
	var check = instance_place(x, y+vsp, oBlock)
	while (!place_meeting(x, y+sign(vsp), oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	if ((check != noone) and (check.y < y)) {instance_destroy(check)}
}

y = y + vsp;

//Animation

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sHeroJump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	if (sprite_index == sHeroJump) 
	{
		instance_create_layer(x,bbox_bottom,"Particles",oeLanding)
		audio_sound_pitch(snLanding, choose(0.6,0.8,1,1.2,1.4))
		audio_play_sound(snLanding, 4, false)
	}
	image_speed = 1;
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
			if (gun_equiped) sprite_index = sHeroGun;
			else sprite_index = sHeroIdle;
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

if (hsp != 0) image_xscale = sign(hsp);