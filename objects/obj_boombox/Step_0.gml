if (keyboard_check_pressed(vk_pageup)){
	global.volumebgm += 0.1;	
}

if (keyboard_check_pressed(vk_pagedown)){
	global.volumebgm -= 0.1;	
}
global.volumebgm = clamp(global.volumebgm, 0, 1);
audio_sound_gain(global.musicplaying, global.volumebgm, 0);
