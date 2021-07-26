//After twisting, we gotta update the array because gems moved!
function twist_change_gem_positions(gem1,gem2,gem3,gem4,i,j){
	global.board[i,j] = gem4 //top left gem became bottom left
	global.board[i,j+1] = gem1 //top right gem became top left
	global.board[i+1,j+1] = gem2 //bottom right gem became top right
	global.board[i+1,j] = gem3 //bottom left gem became bottom right
}