/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 22E0A48E
/// @DnDArgument : "expr" "PlayerObj.player_weapon_using == "Pistol""
if(PlayerObj.player_weapon_using == "Pistol")
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 172E765F
	/// @DnDParent : 22E0A48E
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
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 31881CF6
			/// @DnDParent : 000B0ABA
			/// @DnDArgument : "expr" "PlayerObj.image_xscale"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = PlayerObj.image_xscale;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 00244CC2
			/// @DnDParent : 000B0ABA
			/// @DnDArgument : "code" "layer_add_instance(layer_get_id("Front"), self);"
			layer_add_instance(layer_get_id("Front"), self);
		
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
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 10D7A5FA
			/// @DnDParent : 656A5AE5
			/// @DnDArgument : "expr" "PlayerObj.image_xscale"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = PlayerObj.image_xscale;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 5A5AF470
			/// @DnDParent : 656A5AE5
			/// @DnDArgument : "code" "layer_add_instance(layer_get_id("Front"), self);"
			layer_add_instance(layer_get_id("Front"), self);
		
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
	/// @DnDParent : 22E0A48E
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
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 457C0837
/// @DnDArgument : "expr" "PlayerObj.player_weapon_using == "Hatchet""
if(PlayerObj.player_weapon_using == "Hatchet")
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3911968B
	/// @DnDParent : 457C0837
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerBlinkSpr || PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr || PlayerObj.sprite_index == PlayerFallingSpr || PlayerObj.sprite_index == PlayerRunSpr || PlayerObj.sprite_index == PlayerStandSpr || PlayerObj.sprite_index == PlayerPushSpr || PlayerObj.sprite_index == PlayerMeatThrowSpr || (PlayerObj.sprite_index == PlayerHatchetDoneSpr && PlayerObj.image_index > 7)"
	if(PlayerObj.sprite_index == PlayerBlinkSpr || PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr || PlayerObj.sprite_index == PlayerFallingSpr || PlayerObj.sprite_index == PlayerRunSpr || PlayerObj.sprite_index == PlayerStandSpr || PlayerObj.sprite_index == PlayerPushSpr || PlayerObj.sprite_index == PlayerMeatThrowSpr || (PlayerObj.sprite_index == PlayerHatchetDoneSpr && PlayerObj.image_index > 7))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 31D0F545
		/// @DnDParent : 3911968B
		/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr"
		if(PlayerObj.sprite_index == PlayerClimbEndSpr || PlayerObj.sprite_index == PlayerClimbSpr || PlayerObj.sprite_index == PlayerClimbStartSpr)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6E099365
			/// @DnDParent : 31D0F545
			/// @DnDArgument : "spriteind" "HatchetCarryBackSpr"
			/// @DnDSaveInfo : "spriteind" "HatchetCarryBackSpr"
			sprite_index = HatchetCarryBackSpr;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F053074
			/// @DnDParent : 31D0F545
			/// @DnDArgument : "expr" "PlayerObj.image_xscale"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = PlayerObj.image_xscale;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 03E047E5
			/// @DnDParent : 31D0F545
			/// @DnDArgument : "code" "layer_add_instance(layer_get_id("Front"), self);"
			layer_add_instance(layer_get_id("Front"), self);
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 7BBC9579
			/// @DnDParent : 31D0F545
			/// @DnDArgument : "x" "PlayerObj.x  + (PlayerObj.image_xscale == 1 ? 0 : 0) + PlayerObj.hspeed"
			/// @DnDArgument : "y" "PlayerObj.y - 10 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0)"
			x = PlayerObj.x  + (PlayerObj.image_xscale == 1 ? 0 : 0) + PlayerObj.hspeed;
			y = PlayerObj.y - 10 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2ECF45CF
		/// @DnDParent : 3911968B
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7CD67BC7
			/// @DnDParent : 2ECF45CF
			/// @DnDArgument : "spriteind" "HatchetCarryFrontSpr"
			/// @DnDSaveInfo : "spriteind" "HatchetCarryFrontSpr"
			sprite_index = HatchetCarryFrontSpr;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68E9BB9A
			/// @DnDParent : 2ECF45CF
			/// @DnDArgument : "expr" "PlayerObj.image_xscale"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = PlayerObj.image_xscale;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 5B874FEC
			/// @DnDParent : 2ECF45CF
			/// @DnDArgument : "code" "layer_add_instance(layer_get_id("Back"), self);"
			layer_add_instance(layer_get_id("Back"), self);
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 0A2101EC
			/// @DnDParent : 2ECF45CF
			/// @DnDArgument : "x" "PlayerObj.x  - (PlayerObj.image_xscale == 1 ? 2 : -2) + PlayerObj.hspeed"
			/// @DnDArgument : "y" "PlayerObj.y - 10 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0)"
			x = PlayerObj.x  - (PlayerObj.image_xscale == 1 ? 2 : -2) + PlayerObj.hspeed;
			y = PlayerObj.y - 10 + PlayerObj.vspeed + (PlayerObj.is_player_pushing ? 1 : 0);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1AB8F484
	/// @DnDParent : 457C0837
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 52C334CF
		/// @DnDParent : 1AB8F484
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "y" "0"
		x = 0;
		y = 0;
	}
}