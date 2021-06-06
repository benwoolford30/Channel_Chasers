/// @description Insert description here
// You can write your code in this editor
if (follow=true) and (alive=true)
{
	x=device_mouse_x(0);	
}
x=clamp(x,0,room_width);
if (obj_electricCurrentminigame.ended=true) and (alive=true)
{
	y=device_mouse_y(0);	
}
if (alive=false)
{
	obj_electricCurrentminigame.ended=true;
}