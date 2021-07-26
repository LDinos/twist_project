/// @description
if (mouse_x >= obj_board.x && mouse_x <= obj_board.x + obj_board.sprite_width) 
&& (mouse_y >= obj_board.y && mouse_y <= obj_board.y + obj_board.sprite_height)
{
	i = clamp((mouse_y - obj_board.y) div 64, 0, global.board_rows-2)
	j = clamp((mouse_x - obj_board.x) div 64, 0, global.board_columns-2)
	
	x = obj_board.x + j*64 + 64
	y = obj_board.y + i*64 + 64
	
	if (x != xprevious || y != yprevious) audio_play_sound(snd_spinner_move,0,false)
	var ready_to_spin = !global.spinning && global.gems_moving == 0 && global.gems_dying == 0
	if mouse_check_button_pressed(mb_left) && ready_to_spin {
		global.spinning = true
			gem1 = global.board[i][j]; //GEM IDs
			gem2 = global.board[i][j+1]; 
			gem3 = global.board[i+1][j+1]; 
			gem4 = global.board[i+1][j]
			gem1start = global.board[i][j].x; //GEM STARTING POSITIONS (that we care about)
			gem2start = global.board[i][j+1].y 
			gem3start = global.board[i+1][j+1].x; 
			gem4start = global.board[i+1][j].y
		twist_change_gem_positions(gem1, gem2, gem3, gem4, i, j)
		twist_spin(gem1, gem2, gem3, gem4, anim_channel)
		alarm[0] = 1
	}
}
else {i = -1; j = -1}