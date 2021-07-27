/// @description
image_xscale = GEM_SIZE/sprite_width //Make gem 64x64
image_yscale = image_xscale
image_speed = 0 
set_skin(irandom(image_number-1))
shake_nearby_gems = false; //when I get destroyed, should I do a little shake to nearby gems? (only when cascades > 1)
yend = y //Gem must keep falling down until reaching this yend coordinate
die_anim_alpha = 0
xoffset = 0 //Move gem sprite a bit when cascades are done next to me
yoffset = 0
global.gems_moving++
physics_allowed = true
current_speed = 0
got_matched = false //Used when checking for matches. If this gem gets matched twice, make it powered
dying = false //Am I currently dying?