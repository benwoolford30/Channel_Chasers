/// @description follow finger
// You can write your code in this editor
if (follow=true) and (ended=false)
{
	x=device_mouse_x(0);
	y=device_mouse_y(0);
}
x=clamp(x,0,room_width);
y=clamp(y,0,room_height);
if (ended=true && !audio_is_playing(snd) && (obj_game.enablesound=true))
{
	if (sprite_index=spr_bacteriawin)
	{
		obj_game.success=true;
		
	}
	else
	{
		with obj_game
		{
			live-=1;
			success=false;
		}
	}
	room_goto(rm_minigameinbetweenTv);
}