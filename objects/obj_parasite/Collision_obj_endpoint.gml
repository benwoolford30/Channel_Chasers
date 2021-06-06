/// @description YOu win!
// You can write your code in this editor
if (ended=false)
{
	sprite_index=spr_bacteriawin;
	ended=true;
	x=other.x;
	y=other.y;
	if (obj_game.enablesound=true)
	snd=audio_play_sound(snd_win,0,false);
	audio_stop_sound(snd_parasitemusic);
}