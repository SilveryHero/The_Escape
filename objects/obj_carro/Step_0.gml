
if move ==true {
vsp=movev*cspd

y+=vsp
x-=0.4


if y >= room_height-16{
	instance_create_depth(285, 160, -100, obj_carro)
	audio_play_sound(snd_car_move,0,false)
	instance_destroy();
	car=0
}

}

	