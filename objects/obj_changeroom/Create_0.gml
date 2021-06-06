/// @description Insert description here
// You can write your code in this editor
alarm[0]=room_speed*3;
if (obj_game.enablemusic=true)
audio_play_sound(snd_Tvbackground,1,false);
var endgame=false;
var celebrate=false;
var watchtheheartgo=false;
with (obj_game)
{
	if (success=true)
	{
		celebrate=true;
		points+=1;
		success=false;
	}
	else
	{
		if (begining=false)
			{			
				instance_create_depth(room_width/8,room_height/32+(live+3*(sprite_get_height(spr_heart))+10),-2,obj_brokenheart);
				watchtheheartgo=true;
			}
		else
			begining=false;
	}
	if (live=0)
	{
		
		endgame=true;		
	}
}
NoOfhearts=obj_game.live;
for (var i=1; i<=NoOfhearts;i++)
{
	instance_create_depth(room_width/8,room_height/32+(i*(sprite_get_height(spr_heart))+10),-2,obj_heart);
}
if (watchtheheartgo=true)
{
	alarm[0]=room_speed*5;
}
if (endgame=true)
{
	alarm[0]=room_speed*56;
	alarm[1]=room_speed*5;
}