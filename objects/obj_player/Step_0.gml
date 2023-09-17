//Andar

moveh = -keyboard_check(vk_left) + keyboard_check(vk_right);
movev = -keyboard_check(vk_up) + keyboard_check(vk_down);

hsp=moveh*spd
vsp=movev*spd

if (room == 4 || room == 10) {
	if !obj_flashlight.lights{
		text1 = true
		spd = 0
	}
}

if room == 5 || room == 11 {
	if !obj_car.move{
		text1 = true
		spd = 0
	}
}

if (text1 == false && text2==false){
if keyboard_check_released(vk_control){
	choice += 1
	
}
}
if choice >= 3{
		choice=0
	}



//room restart
if keyboard_check(vk_backspace){
	room_restart();
}

// game exit
if keyboard_check(vk_escape){
	game_end();
}

if (room == rm_Menu_inicial_pt || room == rm_menu_inicial_en) {
	
	if (keyboard_check_released(vk_enter)) {
		
		transition(room_next(room));
	}

}
//collision 
if !place_meeting(x+hsp,y,obj_par_envirorment){

	x+=hsp
}
else{
		while !place_meeting(x+sign(hsp),y,obj_par_envirorment)
	{
		x+=sign(hsp)
	}
}

if !place_meeting(x,y+vsp,obj_par_envirorment){

	y+=vsp
	
}
else{
		while !place_meeting(x,y+sign(vsp),obj_par_envirorment)
	{
		y+=sign(vsp)
	}
}



//depth sort
 depth =-y*2;
 
 //get back from eletric gate
 
 if (room == rm_fase_1_pt || room == rm_fase_1_en) {
 if(place_meeting(x+18,y, obj_gate))&& text2=false{
	
	spd = 0;
	text2 = true;
	instance_create_depth(x, y, -1000, obj_textbox);
		audio_play_sound(snd_latido1,0,false)
	
	}
	
	if text2==true{
		
		if keyboard_check(vk_space){
			spd = 3
			x-=20
			instance_destroy(obj_textbox)
			text2=false
		}
	}
 }
	

if room== 4 || room == 10{
	
	with(obj_player){
	if(place_meeting(x,y, obj_flashlight)){
	instance_create_depth(x, y, -1000, obj_textbox);
	if text1==false {
		audio_play_sound(snd_latido1,0,false)
	}
	spd=0;
	speed=0
	text1=true;
	with(obj_flashlight){
	lights=false
	}
	}
}
}

if room== 5 || room == 11{
	
	with(obj_player){
	if(place_meeting(x,y, obj_car)){
	instance_create_depth(x, y, -1000, obj_textbox);
	if text1==false {
		audio_play_sound(snd_latido1,0,false)
	}
	spd=0;
	text1=true
	with(obj_car){
	move=false
	}
	}
}
}
	
	/*if room == fase_3{
		
		if(place_meeting(x,y, obj_car)){
	
	spd=0;
	text1=true;
	instance_create_depth(x, y, -1000, obj_textbox);
	
	}
	
	
	if obj_flashlight.lights==false{
	
	spd=0;
	text1=true;
	with(obj_flashlight){
	lights=false
}

	
	instance_create_depth(x, y, -1000, obj_text_flashlight);
	
	}
		
		
	
	
}*/

/*back box interaction - interação removida
	
		if(place_meeting(x+18,y, obj_caixa2)){	
		if keyboard_check_released(vk_space){
		if text2==true{
			alarm[0]=1
			alarm[1]=0
		
		
			if choice == 1 {
		audio_play_sound(snd_latido2,0,false)
	}
	else {
		audio_play_sound(snd_latido1,0,false)
	}
			if text2==false{
			alarm[1]=0
			alarm[0]=1
		}
	}
 } */

	
