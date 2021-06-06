/// @description Insert description here
// You can write your code in this editor
if (obj_game.success=false)
{
	obj_game.success=false;
	obj_game.live-=1;
	audio_stop_all();
	room_goto(rm_minigameinbetweenTv);
}