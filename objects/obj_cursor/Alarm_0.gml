/// @description TWISTING GEMS ANIMATION
if (twist_alpha <= 1) {
	twist_spin(gem1, gem2, gem3, gem4, anim_channel)
	alarm[0] = 1
}
else {
	global.spinning = false; 
	twist_alpha = 0
	check_for_matches()
}