/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();
draw_set_font(fnt_font1)
if place_meeting(x-60,y,obj_player) && obj_player.choice!=2 {
	
	if room ==  3 || room ==  4 || room ==  5{
	draw_text(x-250, y+100,"Nao posso ir embora ainda!");
	}
	if room ==  9 || room ==  10 || room ==  11{
	draw_text(x-200, y+100,"I will not go alone!");	
	}
}






