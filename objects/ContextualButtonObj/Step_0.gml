/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 363DA5A9
/// @DnDArgument : "expr" "instance_exists(PlayerObj)"
if(instance_exists(PlayerObj))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 10D3486D
	/// @DnDParent : 363DA5A9
	/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale * 15)"
	/// @DnDArgument : "y" "PlayerObj.y - (PlayerObj.sprite_height / 2) + (sprite_height / 2)"
	x = PlayerObj.x + (PlayerObj.image_xscale * 15);
	y = PlayerObj.y - (PlayerObj.sprite_height / 2) + (sprite_height / 2);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C57BF41
/// @DnDInput : 2
/// @DnDArgument : "expr" "image_alpha + (is_turning_invisible ? -.10 : .10)"
/// @DnDArgument : "expr_1" "image_alpha == 0 ? 0 : (image_alpha == 1 ? 1 : is_turning_invisible)"
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "var_1" "is_turning_invisible"
image_alpha = image_alpha + (is_turning_invisible ? -.10 : .10);
is_turning_invisible = image_alpha == 0 ? 0 : (image_alpha == 1 ? 1 : is_turning_invisible);