/// @description Insert description here
// You can write your code in this editor
if (obj_game.enablemusic=true)
audio_play_sound(snd_parasitemusic,1,true);
width=room_width;
height=room_height;
NoOfLayouts=4;
layout=irandom(NoOfLayouts-1)+1;
switch (layout)
{
	case 1:{
		instance_create_depth(width/16,height-height/32,-3,obj_parasite);
		for (var i=0;i<=6;i++)
		{
			var wall=instance_create_depth(width/4,height-(i*sprite_get_height(spr_hazard)),-3,obj_wall);
			
			wall=instance_create_depth(width/2+width/8,0+(i*sprite_get_height(spr_hazard)),-3,obj_wall);
			
		};
		instance_create_depth(width-width/8,height/8,-4,obj_endpoint);
	}break;
	case 2:{
		instance_create_depth(width/16,height/8,-3,obj_parasite);
		for (var i=0;i<=6;i++)
		{
			var wall=instance_create_depth(0+(i*sprite_get_height(spr_hazard)),height/4,-3,obj_wall);
			wall.image_angle+=90;
			wall=instance_create_depth(width-(i*sprite_get_height(spr_hazard)),height/2+height/8,-3,obj_wall);
			wall.image_angle+=90;
		};
		instance_create_depth(width-width/8,height-height/8,-4,obj_endpoint);
	}break;
	case 3:{
		instance_create_depth(width/2,height/2,-3,obj_parasite);
		for (var i=0;i<=4;i++)
		{
			var wall=instance_create_depth(width/4+(i*sprite_get_height(spr_hazard)),height/2-height/4,-3,obj_wall);
			wall.image_angle+=90;
			
		};
		for (var i=0;i<=6;i++)
		{
			wall=instance_create_depth(width/4,height/2-height/4+(i*sprite_get_height(spr_hazard)),-3,obj_wall);
			
		}
		for (var i=0;i<=4;i++)
		{
			wall=instance_create_depth(width/2+width/4,height/2-height/4+(i*sprite_get_height(spr_hazard)),-3,obj_wall);
			
		}
		for (var i=0;i<=2;i++)
		{
			wall=instance_create_depth(width/2+width/4-(i*sprite_get_height(spr_hazard)),height/2+height/4,-3,obj_wall);
			wall.image_angle+=90;
		}
		instance_create_depth(width/8-width/32,height-height/8,-4,obj_endpoint);
	}break;
	case 4:{
			instance_create_depth(width/2-width/4,height/2,-3,obj_parasite);
			instance_create_depth(width/2+width/4,height/2,-4,obj_endpoint);
	}break;
}