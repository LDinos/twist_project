/// @description
if (physics_allowed) && (!dying)
{
	current_speed += global.gem_speed
	if (y+current_speed >= yend)
	{
		physics_allowed = false
		global.gems_moving--
		current_speed = 0
		if (global.gems_moving == 0) check_for_matches()
		y = yend
	}
	else y += current_speed
}
