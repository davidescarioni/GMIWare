/// @description Insert description here
// You can write your code in this editor

if global.gamestatus = mg.Ongoing
{
	if y < starty
	{
		motion_add(270, (0.3)*global.gamespeed*global.gamespeed)
	}
	else
	{
		speed = 0;
		y = starty;
	}
	
	if global.gametimer <= 0
	{
		main_set_result(mg.Won);
	}
}

if global.gamestatus = mg.Won
{
	if y < starty
	{
		motion_add(270, 1)
	}
	else
	{
		y = starty;
		motion_add(90, 9)
		y--;
	}
}

if global.key_z_pressed
{
	if global.gamestatus = mg.Ongoing
	{
		if y = starty
		{
			motion_add(90, 6*global.gamespeed)
			y--;
		}
	}
}