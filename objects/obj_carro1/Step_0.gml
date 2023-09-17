/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if move ==true {
vsp=movev*cspd

y+=vsp
x-=0.4

if y >= room_height-16{
	instance_create_depth(535, 160, -100, obj_carro1)
	audio_play_sound(snd_car_buzz,0,false)
	instance_destroy();
	car=0
}

}
