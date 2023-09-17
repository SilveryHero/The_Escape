var _music = -1;

if (room == 0 ||  room == 1 ||  room == 2 ||  room == 3 ||  room == 9) {
	_music = snd_inicio;
}

if (room ==  4 ||  room == 10) {
	_music = snd_fase2;
}

if (room == 5 ||  room ==11) {
	_music = snd_fase3;
}

if (room == 6 || room == 12) {
	_music = snd_fim;
}

if (_music != -1) {
	if (global.musicplaying != _music) {
		// new music is different then the current one
	}
	if (!audio_is_playing(_music)) {
		audio_stop_sound(global.musicplaying);
		global.musicplaying = audio_play_sound(_music,0, true);
		audio_sound_gain(global.musicplaying, global.volumebgm, 0);
	}
}