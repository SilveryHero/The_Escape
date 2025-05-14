/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
playable =obj_player.choice


if playable==0||playable==2{
	
	
	event_inherited();
	//enable mom view
	view_visible[1]=false
	view_visible[0]=true
	
	// setting walkin sprite right or left
	
	if (room == 3 || room == 9) {
		if (sign(hsp) == 1 || vsp <> 0){
		
			sprite_index = spr_mom_andando1
		}
		else {
			if (hsp == 0) {
				sprite_index=spr_mom_parada1
			} else {
				sprite_index=spr_mom_andando2
			}
		}
	
	}
	
	if  (room == 4 || room == 10) {
		if sign(obj_mom.hsp)== 1 || obj_mom.vsp <>0{
			sprite_index=spr_mom2_andando1
		}
		else {
			if obj_mom.hsp==0 {
				sprite_index=spr_mom2_parada1
			} 
			else {
		sprite_index=spr_mom2_andando2
			}
		}
	
	}
	
	if room == 5 || room == 11{
	if sign(obj_mom.hsp)== 1 || obj_mom.vsp <>0{
		
		sprite_index=spr_mom3_andando1
	}
	else {
		if obj_mom.hsp==0 {
		sprite_index=spr_mom3_parada1
	} else {
		sprite_index=spr_mom3_andando2
	}
	}
	
	}

	
	//board moviment limitation 

if room == 3 || room == 9 {
x=clamp(x, 36, room_width-86);
y=clamp(y, 310, room_height-70);
}
if room == 4 || room == 10{
	
	x=clamp(x, 36, room_width-86);
	y=clamp(y, 295, room_height-180);
}

if room == 5 || room == 11 {

	x=clamp(x, 36, room_width-86);
	y=clamp(y, 50, room_height-90);
	
}


}


else {
	if room == 3 || room == 9 {
	sprite_index=spr_mom_parada1
	}
	if room == 4 || room == 10 {
	sprite_index=spr_mom2_parada1
	}
	if room == 5 || room == 11 {
	sprite_index=spr_mom3_parada1
	}
}






