/// @description Insert description here
// You can write your code in this editor
if (alive=true)
{
	alive=false;
	sprite_index=spr_flydie;
	if (obj_game.enablesound=true)
	audio_play_sound(snd_lose,0,false);
}/*
	sprite_index=spr_bacteriadie;
	if (obj_game.enablesound=true)
	snd=audio_play_sound(snd_lose,0,false);
	audio_stop_sound(snd_parasitemusic);
}