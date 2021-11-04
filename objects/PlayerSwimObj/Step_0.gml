/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7FA7941A
/// @DnDInput : 6
/// @DnDArgument : "expr" "keyboard_check(ord("A"))"
/// @DnDArgument : "expr_1" "keyboard_check(ord("D"))"
/// @DnDArgument : "expr_2" "(button_right * can_player_move_right) - (button_left * can_player_move_left)"
/// @DnDArgument : "expr_3" "keyboard_check_pressed(ord("J"))"
/// @DnDArgument : "expr_4" "keyboard_check(ord("S"))"
/// @DnDArgument : "expr_5" "keyboard_check(ord("W"))"
/// @DnDArgument : "var" "button_left"
/// @DnDArgument : "var_1" "button_right"
/// @DnDArgument : "var_2" "hspeed"
/// @DnDArgument : "var_3" "button_contextual"
/// @DnDArgument : "var_4" "button_down"
/// @DnDArgument : "var_5" "button_up"
button_left = keyboard_check(ord("A"));
button_right = keyboard_check(ord("D"));
hspeed = (button_right * can_player_move_right) - (button_left * can_player_move_left);
button_contextual = keyboard_check_pressed(ord("J"));
button_down = keyboard_check(ord("S"));
button_up = keyboard_check(ord("W"));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 58585199
/// @DnDArgument : "expr" "is_player_surfaced"
if(is_player_surfaced)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 218AE814
	/// @DnDParent : 58585199
	/// @DnDArgument : "expr" "hspeed == 0"
	if(hspeed == 0)
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
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3768D8FA
	/// @DnDParent : 58585199
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
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55902539
		/// @DnDParent : 3768D8FA
		/// @DnDArgument : "expr" "sign(hspeed)"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = sign(hspeed);
	
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
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3E10E837
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 45F00C0C
	/// @DnDParent : 3E10E837
	/// @DnDArgument : "expr" "sprite_index == PlayerSwimDiveSpr && image_index >= image_number - 1"
	if(sprite_index == PlayerSwimDiveSpr && image_index >= image_number - 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 23141D1F
		/// @DnDParent : 45F00C0C
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "PlayerSwimStandSpr"
		/// @DnDSaveInfo : "spriteind" "PlayerSwimStandSpr"
		sprite_index = PlayerSwimStandSpr;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D7C5E06
		/// @DnDInput : 4
		/// @DnDParent : 45F00C0C
		/// @DnDArgument : "expr" "sign(hspeed)"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "is_contextual_button_being_used"
		/// @DnDArgument : "var_2" "can_player_move_left"
		/// @DnDArgument : "var_3" "can_player_move_right"
		image_xscale = sign(hspeed);
		is_contextual_button_being_used = 0;
		can_player_move_left = 1;
		can_player_move_right = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 30CEA09B
/// @DnDArgument : "var" "contextual_inst.visible"
contextual_inst.visible = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31B4BC5D
/// @DnDArgument : "expr" "!is_contextual_button_being_used && can_player_dive && button_down"
if(!is_contextual_button_being_used && can_player_dive && button_down)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 733E690F
	/// @DnDParent : 31B4BC5D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "contextual_inst.visible"
	contextual_inst.visible = 1;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 501345CA
	/// @DnDParent : 31B4BC5D
	/// @DnDArgument : "expr" "button_contextual"
	if(button_contextual)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E4A0762
		/// @DnDInput : 4
		/// @DnDParent : 501345CA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "is_contextual_button_being_used"
		/// @DnDArgument : "var_1" "is_player_surfaced"
		/// @DnDArgument : "var_2" "can_player_move_left"
		/// @DnDArgument : "var_3" "can_player_move_right"
		is_contextual_button_being_used = 1;
		is_player_surfaced = 0;
		can_player_move_left = 0;
		can_player_move_right = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 47758BB7
		/// @DnDParent : 501345CA
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "PlayerSwimDiveSpr"
		/// @DnDSaveInfo : "spriteind" "PlayerSwimDiveSpr"
		sprite_index = PlayerSwimDiveSpr;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5DBB73AE
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EDD7469
	/// @DnDParent : 5DBB73AE
	/// @DnDArgument : "var" "contextual_inst.visible"
	contextual_inst.visible = 0;
}