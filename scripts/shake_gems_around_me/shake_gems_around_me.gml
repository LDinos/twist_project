//On a cascade, any matches made will shake gems around it
function shake_gems_around_me(i,j){
	if (i > 0) with(global.board[i-1][j]) yoffset -= GEM_SHAKE_VAL
	if (i < global.board_rows-1) with(global.board[i+1][j]) yoffset += GEM_SHAKE_VAL
	if (j > 0) with(global.board[i][j-1]) xoffset -= GEM_SHAKE_VAL
	if (j < global.board_columns-1) with(global.board[i][j+1]) xoffset += GEM_SHAKE_VAL
}