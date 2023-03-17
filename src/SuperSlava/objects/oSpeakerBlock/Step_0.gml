
if abs(oHero.x - (x+sprite_width/2)) <= 48 and oHero.bbox_bottom == bbox_bottom {
	if !instance_exists(oInteract) and !instance_exists(oTextBox) {
		interact = instance_create_layer(x+sprite_width/2,y,"Blocks",oInteract)
	}
	
	if keyboard_check_pressed(ord("E")) {
		instance_destroy(interact)
		create_textbox(text_id);
		oHero.event_is_playing = true
		oHero.hsp = 0;
	}
	
} else {
	if instance_exists(oInteract) {
		instance_destroy(interact)
	}
}

