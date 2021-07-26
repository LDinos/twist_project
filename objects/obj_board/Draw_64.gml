/// @description DEBUG STUFF, FEEL FREE TO UNCOMMENT
/*for(var i = 0; i < global.board_rows; i++){
	for(var j = 0; j < global.board_columns; j++){
		var txt = "-1"
		if (global.board[i][j] != noone) txt = global.board[i][j].skin
		draw_text(j*16, i*16, txt)
	}
}*/
draw_text(16,512,"FPS: "+string(fps_real))