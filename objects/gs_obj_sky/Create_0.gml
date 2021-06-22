/// @description Insert description here
// You can write your code in this editor
alarm[0] = 60/global.gamespeed
var a = layer_get_id_at_depth(300);
layer_hspeed(a[0], -4*global.gamespeed)
due = false;