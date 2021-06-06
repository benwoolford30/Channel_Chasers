/// @description Insert description here
// You can write your code in this editor
//for (var i=1;i<=)
placex=room_width/2;
placey=room_height/32;
for (var i=0;i<NoofPlayers;i++)
{
	draw_text(placex,placey, " Player= "+ string(scores[i]) );
	placey+=room_height/32;
}