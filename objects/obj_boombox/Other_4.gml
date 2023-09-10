/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if room == 0 ||  room == 1 ||  room == 2 ||  room == 3 ||  room == 9{
	audio_play_sound(snd_inicio,0, true)
}

if room ==  4 ||  room == 10{
	audio_play_sound(snd_fase2,0, true)
}

if room == 5 ||  room ==11{
	audio_play_sound(snd_fase3,0, true)
}

if room == 6 || room == 12{
	audio_play_sound(snd_fim,0, true)
}