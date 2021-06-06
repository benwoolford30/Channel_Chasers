/// @description Insert description here
// You can write your code in this editor
if (instance_number(obj_electricity)=0 and Noofbolts>=0) and (ended=false)
{
	config=irandom(6-1)+1;
	scr_getboltconfig(config);
	Noofbolts-=1;
}
if (Noofbolts<=0) and (ended=false)
{
	ended=true;
	instance_destroy(obj_electricity);
	if (obj_game.enablesound=true)
	audio_play_sound(snd_win,0,false);
	alarm[0]=room_speed*2;
	
}
if (ended=true) and (obj_fly.alive=false) and (nomore=false)
{
	alarm[1]=room_speed*2;
	nomore=true;
}