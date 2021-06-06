/// @description Insert description here
// You can write your code in this editor
NoOfLayouts=2;
layout=irandom(NoOfLayouts-1)+1;
layout=2;
placex=32;
placey=32;
switch (layout)
{
	case 1:{
		for (var i=1;i<=8;i++)
		{
			switch (i)
			{
				case 1:{
					placex=room_width/4;
					placey=room_height/4;
				}break;
				case 2:{
					placex=room_width/2;
					placey=room_height/4;
				}break;
				case 3:{
					placex=room_width/2+room_width/4;
					placey=room_height/4;
				}break;
				case 4:{
					placex=room_width/4;
					placey=room_height/2;
				}break;
				case 5:{
					placex=room_width/2+room_width/4;
					placey=room_height/2;
				}break;
				case 6:{
					placex=room_width/4;
					placey=room_height/2+room_height/4;
				}break;
				case 7:{
					placex=room_width/2;
					placey=room_height/2+room_height/4;
				}break;
				case 8:{
					placex=room_width/2+room_width/4;
					placey=room_height/2+room_height/4;
				}break;
			}
			instance_create_depth(placex,placey,-1,obj_walkietalkie);
		}
	}break;
	case 2:{
		walkies=irandom(6-1)+3;
		walkienumb=1;
		walkieorder[0]=0;		
		for (var i=0;i<walkies;i++) //randomise the order of game events
		{
			var rcount=0;
			var reset=true;				
			while (reset=true)
			{
				reset=false;
				rcount=irandom(walkies-1)+1;
				for (var i2=0;i2<array_length_1d(walkieorder);i2++)
				{
					if (walkieorder[i2]=rcount)
					{
						reset=true;
						break;
					}
				}
			}			
			walkieorder[i]=rcount;
			switch (i+1)
			{
				case 1:{
					placex=room_width/4;
					placey=room_height/4;
				}break;
				case 2:{
					placex=room_width/2;
					placey=room_height/4;
				}break;
				case 3:{
					placex=room_width/2+room_width/4;
					placey=room_height/4;
				}break;
				case 4:{
					placex=room_width/4;
					placey=room_height/2;
				}break;
				case 5:{
					placex=room_width/2+room_width/4;
					placey=room_height/2;
				}break;
				case 6:{
					placex=room_width/4;
					placey=room_height/2+room_height/4;
				}break;
				case 7:{
					placex=room_width/2;
					placey=room_height/2+room_height/4;
				}break;
				case 8:{
					placex=room_width/2+room_width/4;
					placey=room_height/2+room_height/4;
				}break;
			}
			var walkie=instance_create_depth(placex,placey,-1,obj_walkietalkie);
			walkie.activenumber=walkieorder[i];
			walkie.sprite_index=spr_walkienopower;
			walkie.minigame=self;
		}
	}break;
}


instance_create_depth(room_width/2,room_height/2,-1,obj_servertap);
instance_create_depth(room_width-room_width/16,room_height/16,-1,obj_clock);