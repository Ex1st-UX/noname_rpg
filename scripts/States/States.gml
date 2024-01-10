function playerStaying(){
	sprite_index = player_stay;
}

function playerMoving() {
	sprite_index = player_sprite_run_right;
        
	if (keyboard_check(ord("W"))) phy_position_y += -3;
	if (keyboard_check(ord("S"))) phy_position_y += 3;
	if (keyboard_check(ord("D")))
	{
		phy_position_x += 3;
		image_xscale = 1;
	}
	if (keyboard_check(ord("A")))
	{
		phy_position_x += -3;
		image_xscale = -1;
	}
}