/// @description Insert description here
// You can write your code in this editor
placex=room_width/2;
placey=room_height/32
for (var i=0;i<array_length_1d(credit);i++)
{
	draw_text(placex,placey,credit[i]);
	placey+=room_height/32;
}
