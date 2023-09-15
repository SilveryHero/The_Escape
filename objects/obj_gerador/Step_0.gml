/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

//puppy mom generator lever

if(place_meeting(x-60,y+64, obj_mom)) {
	if (keyboard_check_released(vk_space)) {
		luz = false;
		sprite_index = spr_gerador_desligado;
	}
	
}

// puppy not pulling generator lever

	if texto==1 {
		
		if keyboard_check_released(vk_space){
			
			alarm[1]=0
			alarm[0]=1
		}
	}


if(place_meeting(x-40,y+30, obj_puppy)) && texto==0 {
	
	if (keyboard_check_released(vk_space)){
		audio_play_sound(snd_latido2,0,false)
		alarm[1]=1
		alarm[0]=0
		}
}
		



depth =-y*2