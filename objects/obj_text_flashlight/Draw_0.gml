/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fnt_font1)

if trigger == false{
	
	if room ==  3 || room ==  4 || room ==  5{
draw_text(x-50, y-180, "Te encontraram!");
draw_text(x-50, y-150, "Desvie das luzes para chegar ao outro lado");
draw_text(x-50, y-120, "aperte backspace para voltar ao inicio da fase");
	}
	if room ==  9 || room ==  10 || room ==  11{
draw_text(x-50, y-180, "They found you!");
draw_text(x-50, y-150, "Dodge the lights to get to the other side");
draw_text(x-50, y-120, "Press Backspace to restart the level");
	}


trigger=true
}


