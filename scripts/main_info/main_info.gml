// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function main_info(){

	global.gametotest = 1;

	switch global.gametotest
	{
		case 1:
			global.gamename = "Feral Rhino Run!"
			global.gameauthor = "Goldensun"
			global.gamegoal = "Avoid trees!"
			global.gamecontrols = "Z: Jump" // Descrizione dei comandi
			global.gameicon = gs_spr_gameicon
			global.gameauthoravatar = gs_spr_avatar
		
			global.gameseconds = 5;	// Durata in secondi del gioco (a velocità 1)
			global.gamemaxspeed = 2;	//Velocità massima raggiungibile
			global.difficultymin = 1;
			global.difficultymax = 3;
			break;
			
		case 2:
			global.gamename = "Feral Rhino Run!"
			global.gameauthor = "Xeryan"
			global.gamegoal = "Avoid trees!"
			global.gamecontrols = "Z: Jump" // Descrizione dei comandi
			global.gameicon = gs_spr_gameicon
			global.gameauthoravatar = gs_spr_avatar
		
			global.gameseconds = 5;	// Durata in secondi del gioco (a velocità 1)
			global.gamemaxspeed = 2;	//Velocità massima raggiungibile
			global.difficultymax = 1;
			global.difficultymin = 3;
			break;
	}

}