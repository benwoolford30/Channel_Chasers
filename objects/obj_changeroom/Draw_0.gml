/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_game))
{
	var num=string(obj_game.points);
	var length=string_length(num);	
	for (var i=1;i<=length;i++)
	{		
		draw_sprite(spr_digits,real(string_char_at(num,i)),room_width-room_width/2+room_width/4+room_width/64+((i-1)*(sprite_get_width(spr_digits)*0.75)),room_height/4);
	}	
}
if (alarm[1]!=-1)
{
	draw_sprite(spr_gameover,0,room_width/2,room_height/4);
}