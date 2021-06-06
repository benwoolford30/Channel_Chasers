/// @description Insert description here
// You can write your code in this editor
GoogleMobileAds_Init("ca-app-pub-4245072328635223~1405500802");
live=3;
prevroom=0;
gamemenu=instance_create_depth(x,y,-1,obj_menu);
enablesound=true;
enablemusic=true;
begining=true;
with gamemenu
{
	var offset=sprite_get_height(spr_menuchoice)/8;
	var shift=-sprite_get_height(spr_menuchoice)*1.75;
	var count=1;
	menuitems[count]=instance_create_depth(x,y+shift+offset,-1,obj_menuchoice);
	menuitems[count].text="Start Game";
	menuitems[count].event=1;
	count+=1;
	menuitems[count]=instance_create_depth(x,y+shift+offset+((count-1)*(offset*8)),-1,obj_menuchoice);
	menuitems[count].text="Options";
	menuitems[count].event=4;
	count+=1;
	menuitems[count]=instance_create_depth(x,y+shift+offset+((count-1)*(offset*8)),-1,obj_menuchoice);
	menuitems[count].text="LeaderBoard";
	menuitems[count].event=8;
	count+=1;
	menuitems[count]=instance_create_depth(x,y+shift+offset+((count-1)*(offset*8)),-1,obj_menuchoice);
	menuitems[count].text="Credits";
	menuitems[count].event=3;
	
}
GoogleMobileAds_AddBannerAt("ca-app-pub-4245072328635223~1405500802", GoogleMobileAds_Full_Banner, 0, 0);

success=false;
points=0;