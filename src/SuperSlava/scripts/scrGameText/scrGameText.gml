/// @param text_id
function scr_game_text(_text_id){

switch(_text_id){

	case "npc 1":
		scr_text("Yooooo Man!!! I'm the purple kid. Understand?", "purple kid")
			scr_text_color(20, 29, c_fuchsia, c_purple, c_fuchsia, c_white); scr_text_color(31, 42, c_red, c_red, c_black, c_black);
			scr_text_float(0,6);
		scr_text("Yeah, i see.", "green kid", -1)
		scr_text("You look sad, bruh.", "purple kid")
		scr_text("Guess it is just a period.", "green kid", -1)
		scr_text("Got something new?", "purple kid")
			scr_option("Yeah", "npc 1 - yes")
			scr_option("Nah", "npc 1 - no")
		break;
		case "npc 1 - yes":
			scr_text("Spit it out, kid!", "purple kid")
			break;
			
		case "npc 1 - no":
			scr_text("Okey.", "purple kid")
			break;

	case "campfire":
		scr_text("I guess this is it. This is the end of my endless journey... The goal seems more unreachable than ever before. Every time I hope, than I dissapoint, than spend months finding new hope, new beacon...")
			scr_text_color(42, 49, c_yellow, c_yellow, c_white, c_white); scr_text_color(81, 92, c_white, c_white, c_gray, c_gray);
			scr_text_speed(42, 57, 0.10)
			scr_text_speed(81, 92, 0.25)
		scr_text("*campfire crackling*")
			scr_text_float(0,19);
			scr_text_color(0,19, c_red, c_orange, c_white, c_yellow);
		scr_text("Do I realy need this path? Am I brave enough to make it to the end succesfully?... I don't know.")
			scr_text_shake(87,100);
			scr_text_pause(87, 88, 16); scr_text_pause(89, 90, 16); scr_text_pause(95, 96, 16);
		scr_text("...")
		break;
		
	case "zamay_first_call":
		scr_text("Алло, Слава?", "zamay")
		scr_text("Слава, ты?", "zamay")
		scr_text("Слава... Я ЕБАЛ! Это пиздец какой-то", "zamay")
		scr_text_shake(9,16);
		scr_text("Молодой Бишкек уже три дня не выходит на связь. Я позвонил всем своим, он нигде не появлялся", "zamay")
		scr_text("Я пока на конспиративной хате, адрес говорить не буду. Вдруг это ребята из Кремля...", "zamay")
		scr_text("Надеюсь, ты в порядке. Заляг на дно пока что, родненький. Обнял.", "zamay")
		break;
}

}