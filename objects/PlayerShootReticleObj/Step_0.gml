/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 34699669
/// @DnDArgument : "expr" "PlayerObj.is_weapon_being_lowered && PlayerObj.can_player_ready_attack && !PlayerObj.is_player_reloading"
if(PlayerObj.is_weapon_being_lowered && PlayerObj.can_player_ready_attack && !PlayerObj.is_player_reloading)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4D6FBF02
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerPistolShootUSpr"
	if(PlayerObj.sprite_index == PlayerPistolShootUSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4D88BEE4
		/// @DnDParent : 4D6FBF02
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? -4 : 3)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height - 1"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? -4 : 3);
		y = PlayerObj.y - PlayerObj.sprite_height - 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6947F8E5
		/// @DnDParent : 4D6FBF02
		image_angle = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 164EFA71
		/// @DnDParent : 4D6FBF02
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4F8326C9
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerPistolShootURSpr"
	if(PlayerObj.sprite_index == PlayerPistolShootURSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 228B1512
		/// @DnDParent : 4F8326C9
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 11 : -11)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 4 : 5)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 11 : -11);
		y = PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 4 : 5);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 3CB05809
		/// @DnDParent : 4F8326C9
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -60 : 60"
		image_angle = PlayerObj.image_xscale == 1 ? -60 : 60;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A5C9DCC
		/// @DnDParent : 4F8326C9
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 540B14C4
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerPistolShootRSpr"
	if(PlayerObj.sprite_index == PlayerPistolShootRSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3F635998
		/// @DnDParent : 540B14C4
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 12 : -12)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 8 : 9)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 12 : -12);
		y = PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 8 : 9);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 748AE2D8
		/// @DnDParent : 540B14C4
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -90 : 90"
		image_angle = PlayerObj.image_xscale == 1 ? -90 : 90;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73CD75DB
		/// @DnDParent : 540B14C4
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1D531C6F
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerPistolShootDRSpr"
	if(PlayerObj.sprite_index == PlayerPistolShootDRSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2A117F68
		/// @DnDParent : 1D531C6F
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 10 : -10)"
		/// @DnDArgument : "y" "PlayerObj.y - (PlayerObj.image_xscale == 1 ? 10 : 9)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 10 : -10);
		y = PlayerObj.y - (PlayerObj.image_xscale == 1 ? 10 : 9);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6E7AFAAF
		/// @DnDParent : 1D531C6F
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -120 : 120"
		image_angle = PlayerObj.image_xscale == 1 ? -120 : 120;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43FC0A09
		/// @DnDParent : 1D531C6F
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2EF3253B
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerPistolShootDSpr"
	if(PlayerObj.sprite_index == PlayerPistolShootDSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 75356022
		/// @DnDParent : 2EF3253B
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 0 : 1)"
		/// @DnDArgument : "y" "PlayerObj.y + 1"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 0 : 1);
		y = PlayerObj.y + 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 0FBF832A
		/// @DnDParent : 2EF3253B
		/// @DnDArgument : "angle" "180"
		image_angle = 180;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5493A640
		/// @DnDParent : 2EF3253B
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 01737B81
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerMagnumShootUSpr"
	if(PlayerObj.sprite_index == PlayerMagnumShootUSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4EE116E5
		/// @DnDParent : 01737B81
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? -4 : 3)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height - 1"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? -4 : 3);
		y = PlayerObj.y - PlayerObj.sprite_height - 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 294750A6
		/// @DnDParent : 01737B81
		image_angle = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E883B2D
		/// @DnDParent : 01737B81
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4C8BEF99
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerMagnumShootURSpr"
	if(PlayerObj.sprite_index == PlayerMagnumShootURSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 47762B1B
		/// @DnDParent : 4C8BEF99
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 15 : -15)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 4 : 5)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 15 : -15);
		y = PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 4 : 5);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 1DF1AEA0
		/// @DnDParent : 4C8BEF99
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -60 : 60"
		image_angle = PlayerObj.image_xscale == 1 ? -60 : 60;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D2472A3
		/// @DnDParent : 4C8BEF99
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6741C124
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerMagnumShootRSpr"
	if(PlayerObj.sprite_index == PlayerMagnumShootRSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 26971F11
		/// @DnDParent : 6741C124
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 17 : -17)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 7 : 8)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 17 : -17);
		y = PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 7 : 8);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 2AD2117A
		/// @DnDParent : 6741C124
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -90 : 90"
		image_angle = PlayerObj.image_xscale == 1 ? -90 : 90;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38FBFE57
		/// @DnDParent : 6741C124
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5FB954BE
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerMagnumShootDRSpr"
	if(PlayerObj.sprite_index == PlayerMagnumShootDRSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6C26EF19
		/// @DnDParent : 5FB954BE
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 15 : -15)"
		/// @DnDArgument : "y" "PlayerObj.y - (PlayerObj.image_xscale == 1 ? 8 : 7)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 15 : -15);
		y = PlayerObj.y - (PlayerObj.image_xscale == 1 ? 8 : 7);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 30B8BA4D
		/// @DnDParent : 5FB954BE
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -120 : 120"
		image_angle = PlayerObj.image_xscale == 1 ? -120 : 120;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 015C159B
		/// @DnDParent : 5FB954BE
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 39B2DF65
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerMagnumShootDSpr"
	if(PlayerObj.sprite_index == PlayerMagnumShootDSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 37C21CA7
		/// @DnDParent : 39B2DF65
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 0 : 1)"
		/// @DnDArgument : "y" "PlayerObj.y + 6"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 0 : 1);
		y = PlayerObj.y + 6;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 07BD1D90
		/// @DnDParent : 39B2DF65
		/// @DnDArgument : "angle" "180"
		image_angle = 180;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A668800
		/// @DnDParent : 39B2DF65
		/// @DnDArgument : "expr" "PlayerObj.is_reticle_attached"
		/// @DnDArgument : "var" "visible"
		visible = PlayerObj.is_reticle_attached;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 13F0734F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F0AFCA3
	/// @DnDParent : 13F0734F
	/// @DnDArgument : "var" "visible"
	visible = 0;
}