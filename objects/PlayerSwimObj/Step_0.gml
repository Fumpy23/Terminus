/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 218AE814
/// @DnDArgument : "expr" "is_stopped"
if(is_stopped)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4CF14283
	/// @DnDParent : 218AE814
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "PlayerSwimStandSpr"
	/// @DnDSaveInfo : "spriteind" "PlayerSwimStandSpr"
	sprite_index = PlayerSwimStandSpr;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 03880939
	/// @DnDParent : 218AE814
	/// @DnDArgument : "expr" "stop_duration > 0"
	if(stop_duration > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 017B15B8
		/// @DnDParent : 03880939
		/// @DnDArgument : "expr" "stop_duration - 1"
		/// @DnDArgument : "var" "stop_duration"
		stop_duration = stop_duration - 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 689030F8
	/// @DnDParent : 218AE814
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B7F47CE
		/// @DnDInput : 4
		/// @DnDParent : 689030F8
		/// @DnDArgument : "expr" "stop_duration_max"
		/// @DnDArgument : "expr_2" "-image_xscale"
		/// @DnDArgument : "expr_3" "image_xscale"
		/// @DnDArgument : "var" "stop_duration"
		/// @DnDArgument : "var_1" "is_stopped"
		/// @DnDArgument : "var_2" "image_xscale"
		/// @DnDArgument : "var_3" "hspeed"
		stop_duration = stop_duration_max;
		is_stopped = 0;
		image_xscale = -image_xscale;
		hspeed = image_xscale;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3768D8FA
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 120545FC
	/// @DnDParent : 3768D8FA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "PlayerSwimMoveSpr"
	/// @DnDSaveInfo : "spriteind" "PlayerSwimMoveSpr"
	sprite_index = PlayerSwimMoveSpr;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0312847B
	/// @DnDParent : 3768D8FA
	/// @DnDArgument : "expr" "move_duration > 0"
	if(move_duration > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32276C8A
		/// @DnDParent : 0312847B
		/// @DnDArgument : "expr" "move_duration - 1"
		/// @DnDArgument : "var" "move_duration"
		move_duration = move_duration - 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3235304B
	/// @DnDParent : 3768D8FA
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 447CB7F0
		/// @DnDInput : 3
		/// @DnDParent : 3235304B
		/// @DnDArgument : "expr" "move_duration_max"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "move_duration"
		/// @DnDArgument : "var_1" "is_stopped"
		/// @DnDArgument : "var_2" "hspeed"
		move_duration = move_duration_max;
		is_stopped = 1;
		hspeed = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7086B878
	/// @DnDParent : 3768D8FA
	/// @DnDArgument : "expr" "player_splash_delay > 0"
	if(player_splash_delay > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70BB3A40
		/// @DnDParent : 7086B878
		/// @DnDArgument : "expr" "player_splash_delay - 1"
		/// @DnDArgument : "var" "player_splash_delay"
		player_splash_delay = player_splash_delay - 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0C587182
	/// @DnDParent : 3768D8FA
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69931C50
		/// @DnDInput : 2
		/// @DnDParent : 0C587182
		/// @DnDArgument : "expr" "player_splash_delay_max"
		/// @DnDArgument : "expr_1" "!is_left_foot_splash"
		/// @DnDArgument : "var" "player_splash_delay"
		/// @DnDArgument : "var_1" "is_left_foot_splash"
		player_splash_delay = player_splash_delay_max;
		is_left_foot_splash = !is_left_foot_splash;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7BB7559C
		/// @DnDParent : 0C587182
		/// @DnDArgument : "xpos" "(15 - (is_left_foot_splash ? 5 : 0)) * -image_xscale"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
		/// @DnDArgument : "layer" ""Middlin""
		/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
		instance_create_layer(x + (15 - (is_left_foot_splash ? 5 : 0)) * -image_xscale, y + 0, "Middlin", PlayerSwimSplashObj);
	}
}