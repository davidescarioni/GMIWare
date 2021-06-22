/// @description Insert description here
// You can write your code in this editor


ww = display_get_gui_width();
hh = display_get_gui_height();
border = 70
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

switch room
{
	case main_rm_mode:
		draw_set_color(c_white)
		if alarm[0] < 120/global.gamespeed
		{
			var bb
			for (bb = 1; bb <= 4; bb+=1;)
			{
				if bb <= global.gamelives
				{
					draw_sprite(main_spr_babba, 0, ww/2 + (bb - 2.5) * 150, hh/6, )
				}
			}
			draw_text_transformed(ww/2, hh*2/5, global.gamelevel, 8,8,0)
			draw_text_transformed(ww/2, hh*2/3, "Velocita': "+string(global.gamespeed)+"\nDifficolta': "+string(global.gamedifficulty), 4,4,0)
		}
		else
		{
			if global.gamestatus = mg.Won
			{
				draw_set_color(c_green)
				draw_text_transformed(ww/2, hh/2, "Successo!", 4,4,0)
			}
			else if global.gamestatus = mg.Lost
			{
				draw_set_color(c_red)
				draw_text_transformed(ww/2, hh/2, "Errore!", 4,4,0)
			}
		}
		break;
	default:
		draw_set_color(c_black)
		draw_rectangle(0,0,ww, border, false)
		draw_rectangle(ww-border,0,ww, hh, false)
		draw_rectangle(0,0,border, hh, false)
		draw_rectangle(0,hh-border,ww, hh, false)
	
		draw_set_color(c_white)
		draw_text_transformed(ww/2,min(hh/2, hh/2 +700 -(global.gameseconds*60 - global.gametimer)*12), global.gamegoal, 2, 2, 0)
		draw_set_halign(fa_right)
		draw_text(ww-border, border/2, "Vel: "+string(global.gamespeed)+" Diff: "+string(global.gamedifficulty))
		draw_text(ww-border, hh-(border/2), global.gamecontrols)
	
		draw_sprite_ext(global.gameauthoravatar, 0, border, border/2, 2, 2, 0, c_white, 1 )
		draw_sprite_ext(global.gameicon, 0, border+70, border/2, 2, 2, 0, c_white, 1 )
		draw_set_halign(fa_left)
		draw_text( border + 110, (border/2), string(global.gamename)+ "\nby "+string(global.gameauthor))
		
		timer_w = 600;
		timer_h = 30;
		timer_b = 3;
		draw_set_color(c_white)
		draw_rectangle(border - timer_b, hh - (border/2) - (timer_h/2) - timer_b, 
						border + timer_w + timer_b, hh - (border/2) + (timer_h/2) + timer_b, false)
		
		draw_set_color(c_black)
		draw_rectangle(border, hh - (border/2) - (timer_h/2), 
						border + ((timer_w * global.gametimer)/ (global.gameseconds*60)), hh - (border/2) + (timer_h/2), false)
		break;
}
