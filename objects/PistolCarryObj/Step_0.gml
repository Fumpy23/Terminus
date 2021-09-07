/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 172E765F
/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerBlinkSpr || PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr || PlayerObj.sprite_index == PlayerFallingSpr || PlayerObj.sprite_index == PlayerRunSpr || PlayerObj.sprite_index == PlayerStandSpr || PlayerObj.sprite_index == PlayerPushSpr || PlayerObj.sprite_index == PlayerMeatThrowSpr"
if(PlayerObj.sprite_index == PlayerBlinkSpr || PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr || PlayerObj.sprite_index == PlayerFallingSpr || PlayerObj.sprite_index == PlayerRunSpr || PlayerObj.sprite_index == PlayerStandSpr || PlayerObj.sprite_index == PlayerPushSpr || PlayerObj.sprite_index == PlayerMeatThrowSpr)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 000B0ABA
	/// @DnDParent : 172E765F
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr"
	if(PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0470C06E
		/// @DnDParent : 000B0ABA
		/// @DnDArgument : "spriteind" "PistolCarryBackSpr"
		/// @DnDSaveInfo : "spriteind" "PistolCarryBackSpr"
		sprite_index = PistolCarryBackSpr;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3FC078EE
		/// @DnDParent : 000B0ABA
		/// @DnDArgument : "x" "PlayerObj.x  + (PlayerObj.image_xscale == 1 ? 3 : -4) + PlayerObj.hspeed"
		/// @DnDArgument : "y" "PlayerObj.y - 5 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0)"
		x = PlayerObj.x  + (PlayerObj.image_xscale == 1 ? 3 : -4) + PlayerObj.hspeed;
		y = PlayerObj.y - 5 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 656A5AE5
	/// @DnDParent : 172E765F
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 66C11841
		/// @DnDParent : 656A5AE5
		/// @DnDArgument : "spriteind" "PistolCarryFrontSpr"
		/// @DnDSaveInfo : "spriteind" "PistolCarryFrontSpr"
		sprite_index = PistolCarryFrontSpr;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7D40B8AD
		/// @DnDParent : 656A5AE5
		/// @DnDArgument : "x" "PlayerObj.x  - (PlayerObj.image_xscale == 1 ? 4 : -3) + PlayerObj.hspeed"
		/// @DnDArgument : "y" "PlayerObj.y - 5 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0)"
		x = PlayerObj.x  - (PlayerObj.image_xscale == 1 ? 4 : -3) + PlayerObj.hspeed;
		y = PlayerObj.y - 5 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 53C446FA
else
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7ED7D4DE
	/// @DnDParent : 53C446FA
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "y" "0"
	x = 0;
	y = 0;
}