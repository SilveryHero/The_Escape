/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/* if y >= 700{
	movev = -1
}

if y <= 350{
	movev = 1
}

vsp=movev*lspd

y+=vsp

*/

x+= hsp
y+= vsp

if x<0 {
	hsp=-hsp
}

if x>room_width {
	hsp=-hsp
}

if y<=350 {
	vsp=-vsp
}
if y > 700{
	vsp=-vsp
}
if place_meeting(x, y, obj_player){
	
	room_restart();
}





