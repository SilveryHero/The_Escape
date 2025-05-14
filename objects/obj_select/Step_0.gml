/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (keyboard_check_pressed(ord("1"))){
	global.language = languages.pt;
	transition(rm_Menu_inicial_pt);
}

if (keyboard_check_pressed(ord("2"))){
	global.language = languages.en;
	transition(rm_menu_inicial_en);
}
	







