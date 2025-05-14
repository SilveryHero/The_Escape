/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/* move in circles steps

if direct==true{
	
	theta += theta_speed;
}

if theta == 180 {
	direct = false
}

if direct == false{
	theta -=theta_speed;
}
if  theta == 0 {
	direct = true
}
  
x = cx + lengthdir_x(r, theta);
y = cy + lengthdir_y(r, theta);

*/


if  direct==true{
	
	angle +=rspeed
}

if angle > 55 {
	direct = false
}

if direct ==false{
	angle -=rspeed
}
if angle < -55{
	direct = true
}

if lights == true{

image_angle=angle;
}



depth =-2*y