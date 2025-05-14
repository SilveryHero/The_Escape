/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
trigger = false
texto = ""

if (instance_exists(obj_gate)) {
	if (obj_gate.sprite_index  == spr_cerca_ligada) {
		if (room ==  rm_fase_1_pt ) {
			texto = "PERIGO, NAO SE APROXIME\nDesligue a energia primeiro.";
		}
		if room ==  rm_fase_1_en{
			texto = "DANGER, DO NOT GO NEAR IT\nTurn down the eletricity first.";
		}
	}
	
	if (obj_gate.sprite_index == spr_cerca_desligada) {
		if (room == rm_fase_1_pt) {
			if (obj_player.choice == 1) {
				texto = "Nao abre deste lado!\nPosso atravessar por aquele buraco na grade"
			}
			else {
				texto = "Nao abre deste lado!\nAlguem precisa passar para o outro lado"
			}
		}
		if (room == rm_fase_1_en) {
			if (obj_player.choice == 1) {
				texto = "It does not open from this side\n I can pass through that hole on the grid"
			}
			else {
				texto = "It does not open from this side\nSomeone needs to go to the other side"
			}
		}
	}

	if (obj_gerador.texto) {
		if (room == rm_fase_1_pt) {
			texto =  "Esta muito pesado para mim";
		}
		if (room == rm_fase_1_en) {
			texto = "It is  too heavy for me"
		}
	}

}

if (obj_player.text1){
	if (room == rm_fase_2_pt) {
		texto = "Te encontraram!\nDesvie das luzes para chegar ao outro lado\nAperte backspace para voltar ao inicio da fase "
	}
	if (room == rm_fase_2_en) {
		texto = "They found you!\n Dodge the lights to get to the other side\nPress Backspace to restart the level";
	}
	if (room == rm_fase_3_pt) {
		texto = "Cuidado!\nVoce esta quase la!\nAperte backspace para voltar ao inicio da fase"	
	}
	if (room == rm_fase_3_en) {
		texto = "Be careful\nYou are almost there\nPress Backspace to restart the level"	
	}
	
}

alpha = 0;
