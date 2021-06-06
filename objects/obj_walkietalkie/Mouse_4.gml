/// @description Insert description here
// You can write your code in this editor
if (minigame.walkienumb=activenumber)
{
	if (obj_game.enablesound=true)
	audio_play_sound(snd_signal,0,false);
	obj_servertap.help=false;
	active=true;
	sprite_index=spr_walkieactivated;
	minigame.walkienumb+=1;
	finished=true;
	for (var i=0;i<instance_number(obj_walkietalkie);i++)
	{
		if (instance_find(obj_walkietalkie,i).active=false)
		{
			finished=false;
			break;
		}
	}
	if (finished=true)
	{
		alarm[0]=room_speed*1;
		obj_servertap.sprite_index=spr_silhouettecelebrate;
		obj_clock.alarm[0]=room_speed*9;
		if (obj_game.enablesound=true)
		audio_play_sound(snd_win,0,false);
		audio_stop_sound(snd_connectradiominigamemusic);
		audio_stop_sound(snd_clocktick);
	}
}
else
{
	if (active=false)
	{
		if (obj_game.enablesound=true)
		audio_play_sound(snd_radiobreak,0,false);
		activenumber=0;
		sprite_index=spr_walkiebroken;
		obj_servertap.sprite_index=spr_silhouettecry;
		audio_stop_sound(snd_connectradiominigamemusic);
		if (obj_game.enablesound=true)
		audio_play_sound(snd_lose,0,false);
	}
}