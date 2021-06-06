function scr_menuevent(argument0) {
	//scr_menuevent(eventnom)
	switch (argument0)
	{
		case 1:{
		room_goto(rm_minigameinbetweenTv);
		audio_stop_sound(snd_mainmenumusic);
		}break;
		case 2:{
		game_end();
		}break;
		case 3:{
			room_goto(rm_credits);
		}break;
		case 4:{
			with obj_game
			{
				for (var i=1;i<array_length_1d(gamemenu.menuitems);i++)
				{
					instance_deactivate_object(gamemenu.menuitems[i]);
				}
				optionsmenu=instance_create_depth(x,y,-1,obj_menu);
				with optionsmenu
				{
					var offset=sprite_get_height(spr_menuchoice)/8+2;
					var shift=-sprite_get_height(spr_menuchoice)*2;
					var count=1;
					menuitems[count]=instance_create_depth(x,y+shift+offset,-1,obj_menuchoice);
					if (obj_game.enablesound=true)
					{
						menuitems[count].text="Disable Sound?";
					}
					else
					{
						menuitems[count].text="Enable Sound?";
					}
					menuitems[count].event=5;
					count+=1;
					menuitems[count]=instance_create_depth(x,y+shift+offset+((count-1)*(offset*8)),-1,obj_menuchoice);
					if (obj_game.enablemusic=true)
					{
						menuitems[count].text="Disable Music?";
					}
					else
					{
						menuitems[count].text="Enable Music?";
					}
					menuitems[count].event=6;
					count+=1;
					menuitems[count]=instance_create_depth(x,y+shift+offset+((count-1)*(offset*8)),-1,obj_menuchoice);
					menuitems[count].text="Back";
					menuitems[count].event=7;			
				}
			}
		}break;
		case 5:{
			with (obj_game)
			{
				if (enablesound=true)
				{
					enablesound=false;
					optionsmenu.menuitems[1].text="Enable Sound?";
				}
				else
				{
					enablesound=true;
					optionsmenu.menuitems[1].text="Disable Sound?";
				}		
			}
		}break;
		case 6:{
			with (obj_game)
			{
				if (enablemusic=true)
				{
					enablemusic=false;
					optionsmenu.menuitems[2].text="Enable Music?";
					audio_stop_all();
				}
				else
				{
					enablemusic=true;
					optionsmenu.menuitems[2].text="Disable Music?";
				}		
			}
		}break;
		case 7:{
			with (obj_game)
			{
				for (var i=1;i<array_length_1d(optionsmenu.menuitems);i++)
				{
					instance_destroy(optionsmenu.menuitems[i]);
				}
				for (var i=1;i<array_length_1d(gamemenu.menuitems);i++)
				{
					instance_activate_object(gamemenu.menuitems[i]);
				}
			}
		}break;
		case 8:{
			with obj_game
			{
				for (var i=1;i<array_length_1d(gamemenu.menuitems);i++)
				{
					instance_deactivate_object(gamemenu.menuitems[i]);
				}
				instance_create_depth(x,y,depth,obj_leaderboard);
				backbutton=instance_create_depth(x,room_height/2+room_height/4+room_height/8,depth,obj_menuchoice);
				backbutton.event=9;
				backbutton.text="Go back";
			}
		}break;
		case 9:{
			with (obj_game)
			{
				for (var i=1;i<array_length_1d(gamemenu.menuitems);i++)
				{
					instance_activate_object(gamemenu.menuitems[i]);
				}			
				instance_destroy(backbutton);
				instance_destroy(obj_leaderboard);
			}
		}break;
		case 10:{
			instance_destroy(obj_game);
			room_goto(rm_menu);
		}break;
	}


}
