/// @description
global.board_rows = 8
global.board_columns = 8
global.points = 0
global.cascades = 0
global.ccw_enabled = false
global.multiplier_ticks = 0
global.spinning = false
global.gems_moving = 0 //How many gems are currently moving
global.gem_speed = 0.5
global.board = -1
global.gems_dying = 0
for(var i = 0; i < global.board_rows; i++){
	for(var j = 0; j < global.board_columns; j++){
		global.board[i][j] = noone
	}
}