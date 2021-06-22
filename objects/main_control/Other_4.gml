/// @description Insert description here
// You can write your code in this editor
switch room
{
	case main_rm_mode:
		alarm[0] = 200/global.gamespeed;
		global.gamelevel++;
		if global.gamespeed < global.gamemaxspeed
		{
			global.gamespeed += 0.1;
		}
		else
		{
			global.gamespeed = global.gamemaxspeed;
		}
		
		global.gamedifficulty++;
		
		if global.gamedifficulty > global.difficultymax ||  global.gamedifficulty < global.difficultymin
		{
			global.gamedifficulty = global.difficultymin;
		}
		
		if global.gamestatus = mg.Lost
		{
			global.gamelives--;
			if global.gamelives < 0
			{
				global.gamelives = 0
			}
		}
		break;
	default:
		global.gamestatus = mg.Ongoing;
		global.gametimer = global.gameseconds*60;
		break;
}