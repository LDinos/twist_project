/// @description
for(var i = global.board_rows-1; i >= 0; i--){ //start from bottom row
	for(var j = 0; j < global.board_columns; j++){
		var gem = instance_create_depth(
		x + j*GEM_SIZE + GEM_SIZE/2, 
		y + i*GEM_SIZE + (GEM_SIZE/2) - GEM_SIZE*global.board_rows,
		depth-2,obj_gems_shadow)
		with(gem) {calculate_fall_position();}
	}
}