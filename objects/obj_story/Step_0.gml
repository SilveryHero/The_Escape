/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if keyboard_check_released(vk_space){
instance_destroy(obj_story2)
instance_create_depth(x,y,-1000,obj_story2)
if page ==21{
	page=0}
	else{
		
	page+=1
}
}
if page == 19{
	alarm[0]=1
}







