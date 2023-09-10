/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if move ==true {
vsp=movev*cspd

y+=vsp
x+=0.4
if car4 ==0 {
	
	instance_create_depth(1000, 180, -100, obj_carro3)
	car4=1
}



if y >= room_height-16{
	instance_create_depth(1000, 180, -100, obj_carro3)
	instance_destroy();
	car4=0
}

}
	