/// @description Insert description here
// You can write your code in this editor
y+=move;
if (y>room_height)
{
	instance_destroy(self);
	audio_stop_sound(snd_electricity);
}
if (shift=true)
{
	if (goright=true)
	{
		if (invert=false)
		x+=6;
		else
		x-=6;
		shiftdistance-=6;
	}
	else
	{
		if (invert=false)
		x-=6;
		else
		x+=6;
		shiftdistance+=6;
	}
	if shiftdistance<0
	goright=false;
	if shiftdistance>maxshift
	goright=true;
}