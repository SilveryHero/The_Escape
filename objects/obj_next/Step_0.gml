/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if ((place_meeting(x-20, y, obj_mom) && obj_puppy.distance <130 ) && obj_player.choice == 2){
	
	
	transition(room_next(room));
}

if (place_meeting(x-30,y,obj_player) && obj_player.choice!=2) {
	
	if (room ==  rm_fase_1_pt || room ==  rm_fase_2_pt || room ==  rm_fase_3_pt) {
		texto = "Nao posso ir embora sozinha!"
	}
	if (room ==  rm_fase_1_en || room ==  rm_fase_2_en || room ==  rm_fase_3_en) {
		texto = "I will not go alone!"	
	}

}
else {
	texto = "";
}
		
	







