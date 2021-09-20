/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3266D2D3
/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerBlinkSpr || PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr || PlayerObj.sprite_index == PlayerFallingSpr || PlayerObj.sprite_index == PlayerRunSpr || PlayerObj.sprite_index == PlayerStandSpr || PlayerObj.sprite_index == PlayerPushSpr || PlayerObj.sprite_index == PlayerThrowSpr || PlayerObj.sprite_index == PlayerBlindedSpr"
if(PlayerObj.sprite_index == PlayerBlinkSpr || PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr || PlayerObj.sprite_index == PlayerFallingSpr || PlayerObj.sprite_index == PlayerRunSpr || PlayerObj.sprite_index == PlayerStandSpr || PlayerObj.sprite_index == PlayerPushSpr || PlayerObj.sprite_index == PlayerThrowSpr || PlayerObj.sprite_index == PlayerBlindedSpr)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6C007CB1
	/// @DnDParent : 3266D2D3
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr"
	if(PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2274C79B
		/// @DnDParent : 6C007CB1
		/// @DnDArgument : "spriteind" "GasMaskItemBackSpr"
		/// @DnDSaveInfo : "spriteind" "GasMaskItemBackSpr"
		sprite_index = GasMaskItemBackSpr;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79831402
		/// @DnDParent : 6C007CB1
		/// @DnDArgument : "expr" "PlayerObj.image_xscale"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = PlayerObj.image_xscale;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 5F57D8B4
		/// @DnDParent : 6C007CB1
		/// @DnDArgument : "code" "layer_add_instance(layer_get_id("Front"), self);"
		layer_add_instance(layer_get_id("Front"), self);
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6B6873B6
		/// @DnDParent : 6C007CB1
		/// @DnDArgument : "x" "PlayerObj.x + PlayerObj.hspeed"
		/// @DnDArgument : "y" "PlayerObj.y - 17 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0)"
		x = PlayerObj.x + PlayerObj.hspeed;
		y = PlayerObj.y - 17 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1C780DD2
	/// @DnDParent : 3266D2D3
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7E9006B6
		/// @DnDParent : 1C780DD2
		/// @DnDArgument : "spriteind" "GasMaskItemFrontSpr"
		/// @DnDSaveInfo : "spriteind" "GasMaskItemFrontSpr"
		sprite_index = GasMaskItemFrontSpr;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 598CA84D
		/// @DnDParent : 1C780DD2
		/// @DnDArgument : "expr" "PlayerObj.image_xscale"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = PlayerObj.image_xscale;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 4DA095B2
		/// @DnDParent : 1C780DD2
		/// @DnDArgument : "code" "layer_add_instance(layer_get_id("Front"), self);"
		layer_add_instance(layer_get_id("Front"), self);
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 57C48874
		/// @DnDParent : 1C780DD2
		/// @DnDArgument : "x" "PlayerObj.x + (sign(PlayerObj.hspeed) * 3) + PlayerObj.image_xscale - (PlayerObj.is_player_pushing * PlayerObj.image_xscale * 2)"
		/// @DnDArgument : "y" "PlayerObj.y - 17 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0)"
		x = PlayerObj.x + (sign(PlayerObj.hspeed) * 3) + PlayerObj.image_xscale - (PlayerObj.is_player_pushing * PlayerObj.image_xscale * 2);
		y = PlayerObj.y - 17 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18A460CE
else
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1D1DE6D3
	/// @DnDParent : 18A460CE
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "y" "room_height + sprite_height"
	x = 0;
	y = room_height + sprite_height;
}