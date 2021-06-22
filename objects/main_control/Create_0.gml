/// @description Insert description here
// You can write your code in this editor
main_info();

global.gamelives = 4;
global.gamelevel = 0;
global.gamedifficulty = 0;
global.gamespeed = 0.90;
global.gametimer = 0;
depth = -10000;

enum mg
{
	Ongoing,
	Lost,
	Won,
}

global.gamestatus = mg.Ongoing;