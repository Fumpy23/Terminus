/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 628EB2C8
/// @DnDArgument : "expr" "instance_exists(PlayerObj)"
if(instance_exists(PlayerObj))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1884F7C2
	/// @DnDParent : 628EB2C8
	/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale * 1)"
	/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height - 3"
	x = PlayerObj.x + (PlayerObj.image_xscale * 1);
	y = PlayerObj.y - PlayerObj.sprite_height - 3;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1ED4E65C
/// @DnDArgument : "expr" "instance_exists(PlayerSwimObj)"
if(instance_exists(PlayerSwimObj))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 778C54DB
	/// @DnDParent : 1ED4E65C
	/// @DnDArgument : "expr" "PlayerSwimObj.sprite_index == PlayerSwimMoveSpr"
	if(PlayerSwimObj.sprite_index == PlayerSwimMoveSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 321B06E7
		/// @DnDParent : 778C54DB
		/// @DnDArgument : "x" "PlayerSwimObj.x + (PlayerSwimObj.image_xscale * 3)"
		/// @DnDArgument : "y" "PlayerSwimObj.y - PlayerSwimObj.sprite_height - 3"
		x = PlayerSwimObj.x + (PlayerSwimObj.image_xscale * 3);
		y = PlayerSwimObj.y - PlayerSwimObj.sprite_height - 3;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 231819F5
	/// @DnDParent : 1ED4E65C
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6E4FFC94
		/// @DnDParent : 231819F5
		/// @DnDArgument : "x" "PlayerSwimObj.x"
		/// @DnDArgument : "y" "PlayerSwimObj.y - PlayerSwimObj.sprite_height - 3"
		x = PlayerSwimObj.x;
		y = PlayerSwimObj.y - PlayerSwimObj.sprite_height - 3;
	}
}