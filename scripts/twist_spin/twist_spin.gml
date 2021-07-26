//16 frames (x1, x2)
//13 frames (x3+)
function twist_spin(gem_tl,gem_tr,gem_dr,gem_dl, anim_channel){
	twist_alpha += (1/13)
	lerp_progress = animcurve_channel_evaluate(anim_channel, twist_alpha)
	gem_tl.x = lerp(gem1start, gem1start+GEM_SIZE, lerp_progress)
	gem_tr.y = lerp(gem2start, gem2start+GEM_SIZE, lerp_progress)
	gem_dr.x = lerp(gem3start, gem3start-GEM_SIZE, lerp_progress)
	gem_dl.y = lerp(gem4start, gem4start-GEM_SIZE, lerp_progress)
}