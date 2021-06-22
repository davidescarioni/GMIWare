/// @description Insert description here
// You can write your code in this editor
instance_create_depth(room_width, 128, 1, gs_obj_tree)
if due = false
{
	switch global.gamedifficulty
	{
		case 2:
			due = choose(true, false, false);
			break;
		case 3:
			due = true;
			break;
		default:
			due = false;
			break;
	}
	if !due
	{
		alarm[0] = (40 + irandom(50))/global.gamespeed
	}
	else
	{
		alarm[0] = 7/global.gamespeed
	}
}
else
{
	alarm[0] = (40 + irandom(50))/global.gamespeed
	due = false;
}