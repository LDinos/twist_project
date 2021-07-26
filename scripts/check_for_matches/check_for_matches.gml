// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_matches(){
	var skin = -1
	for(var i = 0; i < global.board_rows; i++) for(var j=0; j < global.board_columns; j++)
	{
		if (global.board[i][j] == noone) skin[i][j] = -1
		else skin[i][j] = global.board[i][j].skin
	}
	
	var gems_to_kill = ds_list_create()
	for (var i = 0; i < global.board_rows; i++)
	{
		var n = 1; //number of consecutive matches as far	
		for( var j = 1; j < global.board_columns; j++) //HORIZONTAL
		{
			var do_match = false; //do we have 3+ gem matches? If so, execute them!
			var myskin = skin[i][j]
			var otherskin = skin[i][j-1]
			if (myskin == otherskin) n++
			else if (n >= 3) do_match = true;
			else n = 1
			
			var last_check = ((j == 7 && n >=3) && !do_match) //always do a last check at the end of the loop
			if ((do_match) || last_check)
			{
				var gems_matched = []
				for(var k = j-n+last_check; k < j+last_check; k++)
				{
					gems_matched[array_length(gems_matched)] = global.board[i][k]
					global.board[i][k].got_matched = true
				}
				ds_list_add(gems_to_kill,gems_matched)
				n = 1
			}
			if (j==7) n = 1 //reset n value at the end of the loop
		}
		n = 1
		for( var j = 1; j < global.board_rows; j++) //VERTICAL
		{
			var do_match = false; //do we have 3+ gem matches? If so, execute them!
			var myskin = skin[j][i]
			var otherskin = skin[j-1][i]
			if (myskin == otherskin) n++
			else if (n >= 3) do_match = true;
			else n = 1
			
			var last_check = ((j == 7 && n >=3) && !do_match) //always do a last check at the end of the loop
			if ((do_match) || last_check)
			{
				var gems_matched = []
				for(var k = j-n+last_check; k < j+last_check; k++)
				{
					if !(global.board[k][i].got_matched)
					{
						gems_matched[array_length(gems_matched)] = global.board[k][i]
						global.board[k][i].got_matched = true
					}
				}
				ds_list_add(gems_to_kill,gems_matched)
				n = 1
			}
			if (j==7) n = 1 //reset n value at the end of the loop
		}
	}
	//kill or shake gems we found
	for(var j = 0; j < ds_list_size(gems_to_kill); j++)
	{
		var gem_set = gems_to_kill[| j]
		if (j = 0){for(var i = 0; i < array_length(gem_set); i++) with(gem_set[i]) gem_die()}
		else {for(var i = 0; i < array_length(gem_set); i++) with(gem_set[i]) gem_die_later()}
	}
	
	var ret = ds_list_size(gems_to_kill) //did we do any matches?
	ds_list_destroy(gems_to_kill)
	return ret;
}