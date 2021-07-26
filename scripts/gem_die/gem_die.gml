// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gem_die(){
	if !dying global.gems_dying++
	var i = (y - obj_board.y) div GEM_SIZE
	var j = (x - obj_board.x) div GEM_SIZE
	global.board[i][j] = noone
	image_xscale += 0.1
	image_yscale += 0.1
	image_alpha = 0.8
	dying = true
	depth-=1
	alarm[1] = 1
}