///@func player_movement(spd, gameType)
///@desc sets character movement
///@param spd
///@param gameType

function player_movement(spd, gameType){
	

	moveh = -keyboard_check(vk_left) + keyboard_check(vk_right);
	if(gameType == 0){
		movev = -keyboard_check(vk_up) + keyboard_check(vk_down);
		vsp=movev*spd
	} else {
		_jspd = -10;
		_grav = 1;
		
		if (place_meeting(x, y+1, obj_floor)){
			if(keyboard_check(vk_space)){
				vsp = jspd;
			}
		}
		else {
			vsp += _grav;
		}
	}

	hsp=moveh*spd

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


}