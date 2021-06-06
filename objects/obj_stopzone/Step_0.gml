/// @description Insert description here
// You can write your code in this editor
if (obj_car.stop=true) and (fin=false)
{
	fin=true;
	
	if (obj_car.bbox_left>(x-(sprite_width/2)) && (obj_car.bbox_right)<(x+(sprite_width/2)) )
	{
		sprite_index=spr_instopzone;
		alarm[0]=room_speed*2;
		if (obj_game.enablesound=true)
		audio_play_sound(snd_win,0,false);
	}
	else
	{
		sprite_index=spr_outstopzone;
		alarm[1]=room_speed*2;
		if (obj_game.enablesound=true)
		audio_play_sound(snd_lose,0,false);
	}
}
if (obj_car.bbox_right>x+(sprite_width/2)) and (obj_car.stop=false)and (fin=false)
{
	if (obj_game.enablesound=true)
		audio_play_sound(snd_brake,0,false);
	fin=true;
	sprite_index=spr_outstopzone;
	alarm[1]=room_speed*2;
	if (obj_game.enablesound=true)
		audio_play_sound(snd_lose,0,false);
}