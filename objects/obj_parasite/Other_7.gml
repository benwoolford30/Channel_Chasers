/// @description call alarms and stay on last frame
// You can write your code in this editor
if (ended=true and sprite_index=spr_bacteriadie)
{
	image_speed=0;
	image_index=12;
	if (obj_game.enablesound=false)
	{
		alarm[0]=room_speed*1;
	}
}
if (ended=true and sprite_index=spr_bacteriawin)
{	
	image_speed=0;
	image_index=5;
	if (obj_game.enablesound=false)
	{
		alarm[1]=room_speed*1;
	}
}