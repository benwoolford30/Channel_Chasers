/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(snd_Tvbackground);
ini_open("Score.ini");
var num=ini_read_real("Player","NoOfplayers",0)
ini_write_real("Player","Score"+string(num),obj_game.points);
var num=ini_read_real("Player","NoOfplayers",0)
ini_write_real("Player","NoOfplayers",num+1);
ini_close();
instance_destroy(obj_game);
room_goto(rm_menu);