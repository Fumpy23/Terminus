/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 17A0BF09
/// @DnDArgument : "expr" "PlayerObj != noone && ((place_meeting(x , y - 1, PlayerObj) && !place_meeting(x, y, PlayerObj)) || (place_meeting(x - 5, y - 1, PlayerObj) && !place_meeting(x - 5, y, PlayerObj)) || (place_meeting(x + 5 , y - 1, PlayerObj) && !place_meeting(x + 5, y, PlayerObj))) && !PlayerObj.is_player_climbing && !PlayerObj.is_player_falling"
if(PlayerObj != noone && ((place_meeting(x , y - 1, PlayerObj) && !place_meeting(x, y, PlayerObj)) || (place_meeting(x - 5, y - 1, PlayerObj) && !place_meeting(x - 5, y, PlayerObj)) || (place_meeting(x + 5 , y - 1, PlayerObj) && !place_meeting(x + 5, y, PlayerObj))) && !PlayerObj.is_player_climbing && !PlayerObj.is_player_falling)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 488D1800
	/// @DnDInput : 6
	/// @DnDParent : 17A0BF09
	/// @DnDArgument : "expr" "x - sprite_xoffset - 3"
	/// @DnDArgument : "expr_1" "y - sprite_height"
	/// @DnDArgument : "expr_2" "x + sprite_xoffset + 3"
	/// @DnDArgument : "expr_3" "y - sprite_height"
	/// @DnDArgument : "expr_4" "PlayerObj.x - PlayerObj.sprite_xoffset < wall_left_inst.x ? PlayerObj.x - PlayerObj.sprite_xoffset - 1 : wall_left_inst.x"
	/// @DnDArgument : "expr_5" "PlayerObj.x - PlayerObj.sprite_width > wall_right_inst.x ? PlayerObj.x + (PlayerObj.sprite_xoffset * PlayerObj.image_xscale) : wall_right_inst.x"
	/// @DnDArgument : "var" "wall_left_inst.x"
	/// @DnDArgument : "var_1" "wall_left_inst.y"
	/// @DnDArgument : "var_2" "wall_right_inst.x"
	/// @DnDArgument : "var_3" "wall_right_inst.y"
	/// @DnDArgument : "var_4" "wall_left_inst.x"
	/// @DnDArgument : "var_5" "wall_right_inst.x"
	wall_left_inst.x = x - sprite_xoffset - 3;
	wall_left_inst.y = y - sprite_height;
	wall_right_inst.x = x + sprite_xoffset + 3;
	wall_right_inst.y = y - sprite_height;
	wall_left_inst.x = PlayerObj.x - PlayerObj.sprite_xoffset < wall_left_inst.x ? PlayerObj.x - PlayerObj.sprite_xoffset - 1 : wall_left_inst.x;
	wall_right_inst.x = PlayerObj.x - PlayerObj.sprite_width > wall_right_inst.x ? PlayerObj.x + (PlayerObj.sprite_xoffset * PlayerObj.image_xscale) : wall_right_inst.x;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 56E1FD6F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41015A24
	/// @DnDInput : 4
	/// @DnDParent : 56E1FD6F
	/// @DnDArgument : "expr_1" "room_height + wall_left_inst.sprite_height + 1"
	/// @DnDArgument : "expr_3" "room_height + wall_right_inst.sprite_height + 1"
	/// @DnDArgument : "var" "wall_left_inst.x"
	/// @DnDArgument : "var_1" "wall_left_inst.y"
	/// @DnDArgument : "var_2" "wall_right_inst.x"
	/// @DnDArgument : "var_3" "wall_right_inst.y"
	wall_left_inst.x = 0;
	wall_left_inst.y = room_height + wall_left_inst.sprite_height + 1;
	wall_right_inst.x = 0;
	wall_right_inst.y = room_height + wall_right_inst.sprite_height + 1;
}