/// @description Insert description here
// You can write your code in this editor
ini_open("Score.ini");
NoofPlayers=ini_read_real("Player","NoOfplayers",0);
scores[0]=0;
names[0]=0;
for (var i=0;i<NoofPlayers;i++)
{
	scores[i]=ini_read_real("Player","Score"+string(i),0);
}
