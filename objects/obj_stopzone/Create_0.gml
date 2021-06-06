/// @description Insert description here
// You can write your code in this editor
depth=3;
changestartx=0;
fin=false;
size=irandom(5-1)+1;
changestartx=irandom(5-1)+1;
switch (size)
{
	case 1:{
	image_xscale*=0.9;
	}break;
	case 2:{
	image_xscale*=0.8;
	}break;
	case 3:{
	image_xscale*=0.7;
	}break;
	case 4:{
	image_xscale*=0.6;
	}break;
	case 5:{
	image_xscale*=0.51;
	}break;
}
switch (changestartx)
{
	case 1:{
	
	}break;
	case 2:{
	x-=32;
	}break;
	case 3:{
	x-=64;
	}break;
	case 4:{
	x-=96;
	}break;
	case 5:{
	x-=128;
	}break;
}