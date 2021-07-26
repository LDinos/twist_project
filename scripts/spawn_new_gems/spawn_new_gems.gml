// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_new_gems(){
	for(var j = 0; j < global.board_columns; j++){
		var starting_i = 7;
		for(var i = global.board_rows-1; i >= 0; i--){
			if (is_cell_filled(global.board[i][j])){
				var temp = global.board[starting_i][j]
				if (global.board[i][j] != temp){
					global.board[starting_i][j] = global.board[i][j]
					global.board[i][j] = temp
					with(global.board[starting_i][j]) {update_gem_physics(obj_board.y + starting_i*GEM_SIZE + (GEM_SIZE/2))}
					global.gems_moving++
				}
				starting_i--
			}
		}
	}
	
	for(var j = 0; j < global.board_columns; j++){
		var starting_i = 0;
		for(var k = global.board_rows-1; k >= 0; k--) {
			if (is_cell_empty(global.board[k][j])) {
				var gem = instance_create_depth(
				obj_board.x + j*GEM_SIZE + GEM_SIZE/2,
				obj_board.y - ((3*GEM_SIZE)/2) - starting_i*GEM_SIZE, depth, obj_gems_shadow)
				starting_i++
				global.board[k][j] = gem
				with(gem) update_gem_physics(obj_board.y + k*GEM_SIZE +( GEM_SIZE/2))
			}
		}	
	}

}