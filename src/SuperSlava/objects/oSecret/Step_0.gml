/// @description Check collision

if (broke == false)
{
	if (breaking == true)
	{
		y = y - jump
		jump = jump	- grv
		if (y >= ystart)
		{
			y = ystart
			breaking = false
			broke = true
			if (other.secret_inside == "Blunt") 
			{
				instance_create_layer(other.x, other.y, "UnderBlocks", oBlunt)
				audio_play_sound(snSecretFound, 2, false)
			}
			if (other.secret_inside == "Drug")
			{
				instance_create_layer(other.x, other.y, "UnderBlocks", oDrug)
				audio_play_sound(snSecretFound, 2, false)
			}		
		}
	}
}