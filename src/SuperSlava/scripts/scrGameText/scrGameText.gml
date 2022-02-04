/// @param text_id
function scr_game_text(_text_id){

switch(_text_id){

	case "npc 1":
		scr_text("Yooooo Man! I'm NPC 1.")
		scr_text("Got something new?")
			scr_option("Yeah", "npc 1 - yes")
			scr_option("Nah", "npc 1 - no")
		break;
		case "npc 1 - yes":
			scr_text("Spit it out, kid!")
			break;
			
		case "npc 1 - no":
			scr_text("Okey.")
			break;

	case "npc 2":
		scr_text("Bro, sorry, got to more weed for now. Got some drugs. Also I have new Alyekin book. Wanna take a peak?")
		scr_text("Come back next Monday")
		break;
		
	case "npc 3":
		scr_text("Yo, i got some new girlz at my place")
		scr_text("Wanna test their... skillzzz?")
		break;
}

}