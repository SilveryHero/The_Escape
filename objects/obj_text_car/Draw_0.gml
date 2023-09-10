/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


draw_set_font(fnt_font1)

if trigger == false{
		if room ==  3 || room ==  4 || room ==  5{
draw_text(x-30, y-180, "Cuidado!");
draw_text(x-30, y-150, "Voce esta quase la!");
draw_text(x-30, y-120, "Aperte backspace para voltar ao inicio da fase");
	}
	if room ==  9 || room ==  10 || room ==  11{
draw_text(x-30, y-180, "Be careful");
draw_text(x-30, y-150, "You are almost there");
draw_text(x-50, y-120, "Press Backspace to restart the level");
	}


trigger=true
}






