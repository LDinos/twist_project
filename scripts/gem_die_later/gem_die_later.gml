// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gem_die_later(){
	if !dying global.gems_dying++
	dying = true
	alarm[0] = 10 //the difference between this script and gem_die is here
}