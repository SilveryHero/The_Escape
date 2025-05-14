/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if obj_gerador.luz == false && luz==0{
	sprite_index=spr_cerca_desligada;

}

if (pular == true) {
	pulo -=3;
	cair=true
}
	
if (obj_puppy.y<400 && cair==true) {
	pulo+=20;
	pular = false;
}
				
if (obj_puppy.y>520 && pulo >0) {
		
	luz=1
	pulo=0
	cair=false
	alarm[0]=1
}
	
if(place_meeting(x+64,y, obj_puppy)) {
	
	
	if (InputPressed(INPUT_VERB.ACTION)){
		
		pular=true
	}
}

if(place_meeting(x+64,y, obj_mom)) {
	
	if (InputPressed(INPUT_VERB.ACTION)){
		
		sprite_index=spr_cerca_aberta;
		luz=1
	}
}

// Inherit the parent event
event_inherited();

depth=-y
