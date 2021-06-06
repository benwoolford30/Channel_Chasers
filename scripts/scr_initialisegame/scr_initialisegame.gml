function scr_initialisegame() {
	//scr_initialisegame()
	randomize();
	scr_scaletodevice();

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	audio_play_sound(snd_mainmenumusic,1,true);


}
