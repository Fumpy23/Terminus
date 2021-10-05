/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7086B878
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
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69931C50
	/// @DnDParent : 0C587182
	/// @DnDArgument : "expr" "player_splash_delay_max"
	/// @DnDArgument : "var" "player_splash_delay"
	player_splash_delay = player_splash_delay_max;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BB7559C
	/// @DnDParent : 0C587182
	/// @DnDArgument : "xpos" "15 * -image_xscale"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
	/// @DnDArgument : "layer" ""Middlin""
	/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
	instance_create_layer(x + 15 * -image_xscale, y + 0, "Middlin", PlayerSwimSplashObj);
}