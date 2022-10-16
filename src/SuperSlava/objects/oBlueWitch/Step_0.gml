vsp = vsp + grv;


if floating {
	vsp = -1
}


// IF HIT WALL WHILE FOLLOWING
if (place_meeting(x+hsp, y, oWall))
{
	floating = true
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
} else {
	floating = false
}


var x_dif = oHero.x - x
var y_dif = oHero.y - y

// FINDING ENEMY
if (50 < abs(x_dif)) and (abs(x_dif) < 150) and (abs(y_dif) < 200){
	hsp = walksp * sign(x_dif)
} else {
	hsp = 0
}


// MOVING
if not floating x += hsp


// GRAVITY
if (place_meeting(x, y+vsp, oWall))
{
	while (!place_meeting(x, y+sign(vsp), oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;



#region ATTACK

if spike_cd = 0 and not oHero.sprinting and (45 > abs(x_dif)) and (abs(y_dif) < 200) and not get_hit and not attacking {
	attacking = true
	spikes = instance_create_layer(x, y+(sprite_height)/2, "Particles", oSpikes)
	spikes.dir = sign(image_xscale)
	spikes.image_xscale = image_xscale
	spike_cd = spike_cd_max
	image_index = 0
}


if spike_cd != 0 {spike_cd = spike_cd - 1}

#endregion





#region ANIMATION/IMAGE STUFF

if attacking {
	sprite_index = sWitchCombat
	if image_index == image_number - 1 {attacking = false}
}

if get_hit and not attacking {
	if (image_index >= image_number - 1) {
		get_hit = false
	} else {
		hsp = 0
	}
} 

if (!place_meeting(x, y+1, oWall)) and not get_hit and not attacking
{
	sprite_index = sWitchIdle;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else if not get_hit and not attacking
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sWitchIdle;	
	}
	else
	{
		sprite_index = sWitchRun;	
	}
}

if (hsp != 0) image_xscale = sign(hsp);

#endregion