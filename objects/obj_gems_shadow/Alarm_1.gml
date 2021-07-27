/// @description Die animation
if (die_anim_alpha <= 1)
{
	xoffset = 0
	yoffset = 0
	image_xscale = lerp(image_xscale, 0, die_anim_alpha)
	image_alpha = lerp(image_alpha, 0, die_anim_alpha)
	image_yscale = image_xscale
	die_anim_alpha += 1/10
	alarm[1] = 1
}
else instance_destroy()