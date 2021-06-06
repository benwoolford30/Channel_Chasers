/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(snd_Tvbackground);
var proceed=false;
while (proceed=false)
{
	var changeto=irandom(4-1)+1;
	 proceed=true;
	switch (changeto)
	{
		case 1:{
			newroom=rm_parasiteminigame;
		}break;
		case 2:{
			newroom=rm_serverconnectminigame;
		}break;
		case 3:{
			newroom=rm_electricityavoidminigame;
		}break;
		case 4:{
			newroom=rm_Carstopminigame;
		}break;
	}
	if (obj_game.prevroom=newroom)
	{
		proceed=false;
	}
}
obj_game.prevroom=newroom;
room_goto(newroom);
