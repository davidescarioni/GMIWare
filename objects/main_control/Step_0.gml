/// @description Insert description here
// You can write your code in this editor
if room != main_rm_mode
{
	if global.gametimer > -global.gamespeed
	{
		global.gametimer -= global.gamespeed;
	}
	else if global.gamestatus = mg.Ongoing
	{
		main_set_result(mg.Lost);
	}
}

global.key_left_pressed = keyboard_check_pressed(vk_left)
global.key_right_pressed = keyboard_check_pressed(vk_right)
global.key_down_pressed = keyboard_check_pressed(vk_down)
global.key_up_pressed = keyboard_check_pressed(vk_up)
global.key_z_pressed = keyboard_check_pressed(ord("Z"))
global.key_x_pressed = keyboard_check_pressed(ord("X"))

global.key_left = keyboard_check(vk_left)
global.key_right = keyboard_check(vk_right)
global.key_down = keyboard_check(vk_down)
global.key_up = keyboard_check(vk_up)
global.key_z = keyboard_check(ord("Z"))
global.key_x = keyboard_check(ord("X"))

global.key_left_released = keyboard_check_released(vk_left)
global.key_right_released = keyboard_check_released(vk_right)
global.key_down_released = keyboard_check_released(vk_down)
global.key_up_released = keyboard_check_released(vk_up)
global.key_z_released = keyboard_check_released(ord("Z"))
global.key_x_released = keyboard_check_released(ord("X"))