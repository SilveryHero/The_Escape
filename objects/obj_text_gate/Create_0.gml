/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Inherit the parent event
event_inherited();

texto = ""
if (obj_gate.sprite_index  == spr_cerca_ligada) {
	if (room ==  rm_fase_1_pt ) {
		texto = "PERIGO, NAO SE APROXIME\nDesligue a energia primeiro.";
	}
	if room ==  rm_fase_1_en{
		texto = "DANGER, DO NOT GO NEAR IT\nTurn down the eletricity first.";
	}
}