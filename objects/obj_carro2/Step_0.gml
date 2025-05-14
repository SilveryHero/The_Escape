/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if move ==true {
vsp=movev*cspd

y+=vsp
x+=0.4


if y >= room_height-16{
	instance_create_depth(730, 160, -100, obj_carro2)
	instance_destroy();
	car=0
}

}