/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

playable = obj_player.choice;
distance = point_distance(x, y, _follow1.x, _follow1.y);


if (playable == 0) {
	speed=0
	if room == 3|| room == 9{
		sprite_index = spr_puppy_parado;
	}
	if room == 4|| room == 10{
		sprite_index = spr_puppy2_parado;
	}
	if room == 5|| room == 11{
		sprite_index = spr_puppy3_parado;
	}
	depth=-2*y;
}

if playable==1{



	// Inherit the parent event
	event_inherited();


	// setting walkin sprite right or left
	
	if (room == rm_fase_1_pt || room == rm_fase_1_en) {	
		if (sign(obj_puppy.hsp) == 1 || obj_puppy.vsp <> 0) {
			sprite_index = spr_puppy_andando3;
		}
		else {
			if (obj_puppy.hsp == 0) {
				sprite_index = spr_puppy_parado;
			}
			else {
				sprite_index = spr_puppy_andando4;
			}
		}
	}
	
	if (room == rm_fase_2_pt|| room == rm_fase_2_en) {	
		if (sign(obj_puppy.hsp) == 1 || obj_puppy.vsp <> 0) {
			sprite_index = spr_puppy2_andando3;
		}
		else {
			if (obj_puppy.hsp == 0) {
				sprite_index = spr_puppy2_parado;
			} 
			else {
			sprite_index = spr_puppy2_andando4;
			}
		}
	}
	
	if (room == rm_fase_3_pt|| room == rm_fase_3_en) {	
		if sign(obj_puppy.hsp) == 1 || obj_puppy.vsp <> 0{
			sprite_index = spr_puppy3_andando3;
		}
		else {
			if obj_puppy.hsp == 0 {
			sprite_index = spr_puppy3_parado;
			} 
			else {
			sprite_index = spr_puppy3_andando4;
			}
		}
	}
	


	view_visible[0]=false;
	view_visible[1]=true;


	//board moviment limitation 
	if (room == rm_fase_1_pt || room == rm_fase_1_en) {
		x=clamp(x, 36, room_width-40);
		y=clamp(y, 325, room_height-50);
	}
	if (room == rm_fase_2_pt || room == rm_fase_2_en) {
		if text1 == false && text2==false{
			spd=5
		}
	
		x=clamp(x, 36, room_width-40);
		y=clamp(y, 310, room_height-150);
	}	

	if (room == rm_fase_3_pt|| room == rm_fase_3_en) {
		x=clamp(x, 36, room_width-40);
		y=clamp(y, 150, room_height-50);
		if text1 == false && text2==false{
			spd=5
		}
	}

	if (room == rm_fase_1_pt|| room == rm_fase_1_en) {
		y+=obj_gate.pulo;
		if (obj_gate.pular == true || obj_gate.cair == true) {
			sprite_index=spr_puppy_parado2;
		}
	
	
		if (text1 == false && obj_gerador.texto == false && text2 == false) {
			spd=5;
		}
		else {
			spd=0;
		}


	}
		
}
if playable==2{
	
	depth = -2*y
		if obj_mom.spd==0{
			speed=0
			
			if room == 3|| room == 9{
			sprite_index=spr_puppy_parado
			}
			if room == 4|| room == 10{
			sprite_index=spr_puppy2_parado
			}
			if room == 5|| room == 11{
			sprite_index=spr_puppy3_parado
			}
		}
		else{
		view_visible[1]=false
		view_visible[0]=true

		
		if (distance <=130){
			
			speed =0;
		}
		else{
			var _max_step = distance/90;
			move_towards_point(_follow1.x,_follow1.y,_max_step);
		}
		if room == 3|| room == 9{
		if sign(obj_mom.hsp)== 1 || obj_mom.vsp <>0{
		
		sprite_index=spr_puppy_andando
	}
	else {
		if obj_mom.hsp==0 {
		sprite_index=spr_puppy_parado
	} else {
		sprite_index=spr_puppy_andando2
	}
	}
	
		}
		if room == 4|| room == 10{
		if sign(obj_mom.hsp)== 1 || obj_mom.vsp <>0{
		
		sprite_index=spr_puppy2_andando
	}
	else {
		if obj_mom.hsp==0 {
		sprite_index=spr_puppy2_parado
	} else {
		sprite_index=spr_puppy2_andando2
	}
	}
	
		}
		if room == 5|| room == 11{
		if sign(obj_mom.hsp)== 1 || obj_mom.vsp <>0{
		
		sprite_index=spr_puppy3_andando
	}
	else {
		if obj_mom.hsp==0 {
		sprite_index=spr_puppy3_parado
	} else {
		sprite_index=spr_puppy3_andando2
	}
	}
	
		}
		}
}





	
	

