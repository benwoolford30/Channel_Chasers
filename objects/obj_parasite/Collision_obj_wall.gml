/// @description Die
// You can write your code in this editor
if (ended=false)
{
	ended=true;
	sprite_index=spr_bacteriadie;
	if (obj_game.enablesound=true)
	snd=audio_play_sound(snd_lose,0,false);
	audio_stop_sound(snd_parasitemusic);
}