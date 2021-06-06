function scr_getboltconfig(argument0) {
	//scr_getboltconfig(argument0)
	var current=0;
	switch (argument0)
	{
		case 1:{
		
			current=instance_create_depth(room_width-room_width/8,room_height/32,0,obj_electricity);	
			current=instance_create_depth(room_width/8,room_height/32,0,obj_electricity);		
		
		}break;
		case 2:{
			current=instance_create_depth(room_width/8,room_height/32,0,obj_electricity);		
			current=instance_create_depth(room_width/2,room_height/32,0,obj_electricity);
		}break;
		case 3:{
			current=instance_create_depth(room_width-room_width/8,room_height/32,0,obj_electricity);		
			current=instance_create_depth(room_width/2,room_height/32,0,obj_electricity);
		}break;
		case 4:{
			current=instance_create_depth(room_width-room_width/8,room_height/32,0,obj_electricity);	
			current.shift=true;
			var otherway=irandom(1);
			current.invert=otherway;
			current=instance_create_depth(room_width/8,room_height/32,0,obj_electricity);		
			current.shift=true;
			current.invert=otherway;
		}break;
		case 5:{
			current=instance_create_depth(room_width/8,room_height/32,0,obj_electricity);		
			current.shift=true;
			var otherway=irandom(1);
			current.invert=otherway;
			current=instance_create_depth(room_width/2,room_height/32,0,obj_electricity);
			current.shift=true;
			current.invert=otherway;
		}break;
		case 6:{
			current=instance_create_depth(room_width-room_width/8,room_height/32,0,obj_electricity);		
			current.shift=true;
			var otherway=irandom(1);
			current.invert=otherway;
			current=instance_create_depth(room_width/2,room_height/32,0,obj_electricity);
			current.shift=true;
			current.invert=otherway;
		}break;
	
	}


}
