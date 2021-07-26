// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_fall_position(){
	var j = (x-obj_board.x) div GEM_SIZE
	for(var i = global.board_rows-1; i >= 0; i--){
		if (is_cell_empty(global.board[i][j])){
			global.board[i][j] = id
			yend = obj_board.y + GEM_SIZE*i + (GEM_SIZE/2)		
			break;
		}
	}
}