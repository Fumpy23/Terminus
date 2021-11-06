/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7FA7941A
/// @DnDInput : 9
/// @DnDArgument : "expr" "keyboard_check(ord("A"))"
/// @DnDArgument : "expr_1" "keyboard_check(ord("D"))"
/// @DnDArgument : "expr_2" "(button_right * can_player_move_right) - (button_left * can_player_move_left)"
/// @DnDArgument : "expr_3" "keyboard_check_pressed(ord("J"))"
/// @DnDArgument : "expr_4" "keyboard_check(ord("S"))"
/// @DnDArgument : "expr_5" "keyboard_check(ord("W"))"
/// @DnDArgument : "expr_6" "hspeed < 0 ? -1 : (hspeed > 0 ? 1 : image_xscale)"
/// @DnDArgument : "expr_7" "keyboard_check_pressed(ord("I"))"
/// @DnDArgument : "expr_8" "dive_sound_delay - 1"
/// @DnDArgument : "var" "button_left"
/// @DnDArgument : "var_1" "button_right"
/// @DnDArgument : "var_2" "hspeed"
/// @DnDArgument : "var_3" "button_contextual"
/// @DnDArgument : "var_4" "button_down"
/// @DnDArgument : "var_5" "button_up"
/// @DnDArgument : "var_6" "image_xscale"
/// @DnDArgument : "var_7" "button_hurt"
/// @DnDArgument : "var_8" "dive_sound_delay"
button_left = keyboard_check(ord("A"));
button_right = keyboard_check(ord("D"));
hspeed = (button_right * can_player_move_right) - (button_left * can_player_move_left);
button_contextual = keyboard_check_pressed(ord("J"));
button_down = keyboard_check(ord("S"));
button_up = keyboard_check(ord("W"));
image_xscale = hspeed < 0 ? -1 : (hspeed > 0 ? 1 : image_xscale);
button_hurt = keyboard_check_pressed(ord("I"));
dive_sound_delay = dive_sound_delay - 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 210A5FA0
/// @DnDArgument : "expr" "dive_sound_delay == 0"
if(dive_sound_delay == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0D98222F
	/// @DnDParent : 210A5FA0
	/// @DnDArgument : "soundid" "PlayerBucket2Sound"
	/// @DnDSaveInfo : "soundid" "PlayerBucket2Sound"
	audio_play_sound(PlayerBucket2Sound, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 50CBD956
	/// @DnDParent : 210A5FA0
	/// @DnDArgument : "xpos" "-5"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
	/// @DnDArgument : "layer" ""Frontmost""
	/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
	instance_create_layer(x + -5, y + 0, "Frontmost", PlayerSwimSplashObj);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2BFA47F6
	/// @DnDParent : 210A5FA0
	/// @DnDArgument : "xpos" "5"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
	/// @DnDArgument : "layer" ""Frontmost""
	/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
	instance_create_layer(x + 5, y + 0, "Frontmost", PlayerSwimSplashObj);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 58740471
/// @DnDArgument : "expr" "button_hurt && !is_player_hurt"
if(button_hurt && !is_player_hurt)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33589EF6
	/// @DnDInput : 4
	/// @DnDParent : 58740471
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "is_player_hurt"
	/// @DnDArgument : "var_1" "image_index"
	/// @DnDArgument : "var_2" "contextual_inst.visible"
	/// @DnDArgument : "var_3" "is_contextual_button_being_used"
	is_player_hurt = 1;
	image_index = 0;
	contextual_inst.visible = 0;
	is_contextual_button_being_used = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 59F89045
	/// @DnDParent : 58740471
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "PlayerSwimHurtSpr"
	/// @DnDSaveInfo : "spriteind" "PlayerSwimHurtSpr"
	sprite_index = PlayerSwimHurtSpr;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B5F99D8
	/// @DnDParent : 58740471
	/// @DnDArgument : "xpos" "-5"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
	/// @DnDArgument : "layer" ""Frontmost""
	/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
	instance_create_layer(x + -5, y + 0, "Frontmost", PlayerSwimSplashObj);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2C97C6CC
	/// @DnDParent : 58740471
	/// @DnDArgument : "xpos" "5"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
	/// @DnDArgument : "layer" ""Frontmost""
	/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
	instance_create_layer(x + 5, y + 0, "Frontmost", PlayerSwimSplashObj);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1B2E76AD
	/// @DnDParent : 58740471
	/// @DnDArgument : "soundid" "PlayerHurtSound"
	/// @DnDSaveInfo : "soundid" "PlayerHurtSound"
	audio_play_sound(PlayerHurtSound, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4EDCC6B7
/// @DnDArgument : "expr" "is_player_hurt"
if(is_player_hurt)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72AAEC55
	/// @DnDInput : 3
	/// @DnDParent : 4EDCC6B7
	/// @DnDArgument : "var" "can_player_move_left"
	/// @DnDArgument : "var_1" "can_player_move_right"
	/// @DnDArgument : "var_2" "hspeed"
	can_player_move_left = 0;
	can_player_move_right = 0;
	hspeed = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2DE93CBA
	/// @DnDParent : 4EDCC6B7
	/// @DnDArgument : "expr" "image_index >= image_number - 1"
	if(image_index >= image_number - 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0935EA2A
		/// @DnDInput : 3
		/// @DnDParent : 2DE93CBA
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "var" "is_player_hurt"
		/// @DnDArgument : "var_1" "can_player_move_left"
		/// @DnDArgument : "var_2" "can_player_move_right"
		is_player_hurt = 0;
		can_player_move_left = 1;
		can_player_move_right = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7AF906AE
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 58585199
	/// @DnDParent : 7AF906AE
	/// @DnDArgument : "expr" "is_player_surfaced"
	if(is_player_surfaced)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 40ACFFA7
		/// @DnDParent : 58585199
		/// @DnDArgument : "expr" "sprite_index == PlayerSwimSurfaceSpr"
		if(sprite_index == PlayerSwimSurfaceSpr)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 48C12565
			/// @DnDParent : 40ACFFA7
			/// @DnDArgument : "expr" "image_index >= image_number - 1"
			if(image_index >= image_number - 1)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2F8D5394
				/// @DnDParent : 48C12565
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerSwimStandSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerSwimStandSpr"
				sprite_index = PlayerSwimStandSpr;
				image_index += 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5F49A3D7
				/// @DnDInput : 3
				/// @DnDParent : 48C12565
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "expr_2" "1"
				/// @DnDArgument : "var" "is_contextual_button_being_used"
				/// @DnDArgument : "var_1" "can_player_move_left"
				/// @DnDArgument : "var_2" "can_player_move_right"
				is_contextual_button_being_used = 0;
				can_player_move_left = 1;
				can_player_move_right = 1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3AB2B8F8
		/// @DnDParent : 58585199
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 35A349D5
			/// @DnDParent : 3AB2B8F8
			/// @DnDArgument : "expr" "hspeed == 0"
			if(hspeed == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 40B7FE07
				/// @DnDParent : 35A349D5
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerSwimStandSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerSwimStandSpr"
				sprite_index = PlayerSwimStandSpr;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 02350384
			/// @DnDParent : 3AB2B8F8
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2697D86D
				/// @DnDParent : 02350384
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerSwimMoveSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerSwimMoveSpr"
				sprite_index = PlayerSwimMoveSpr;
				image_index += 0;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 45F84B3C
				/// @DnDParent : 02350384
				/// @DnDArgument : "expr" "player_splash_delay > 0"
				if(player_splash_delay > 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 70175B8A
					/// @DnDParent : 45F84B3C
					/// @DnDArgument : "expr" "player_splash_delay - 1"
					/// @DnDArgument : "var" "player_splash_delay"
					player_splash_delay = player_splash_delay - 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0E95CCB9
				/// @DnDParent : 02350384
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5F542C3C
					/// @DnDInput : 2
					/// @DnDParent : 0E95CCB9
					/// @DnDArgument : "expr" "player_splash_delay_max"
					/// @DnDArgument : "expr_1" "!is_left_foot_splash"
					/// @DnDArgument : "var" "player_splash_delay"
					/// @DnDArgument : "var_1" "is_left_foot_splash"
					player_splash_delay = player_splash_delay_max;
					is_left_foot_splash = !is_left_foot_splash;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 47893383
					/// @DnDParent : 0E95CCB9
					/// @DnDArgument : "xpos" "(15 - (is_left_foot_splash ? 5 : 0)) * -image_xscale"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
					/// @DnDArgument : "layer" ""Middlin""
					/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
					instance_create_layer(x + (15 - (is_left_foot_splash ? 5 : 0)) * -image_xscale, y + 0, "Middlin", PlayerSwimSplashObj);
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 2B7FE33D
				/// @DnDParent : 02350384
				/// @DnDArgument : "expr" "image_index < 7"
				if(image_index < 7)
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 7DD471D8
					/// @DnDParent : 2B7FE33D
					/// @DnDArgument : "expr" "is_swim_stroke"
					if(is_swim_stroke)
					{
						/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
						/// @DnDVersion : 1
						/// @DnDHash : 6F6C601E
						/// @DnDParent : 7DD471D8
						/// @DnDArgument : "soundid" "PlayerPistolRaiseSound"
						/// @DnDArgument : "not" "1"
						/// @DnDSaveInfo : "soundid" "PlayerPistolRaiseSound"
						var l6F6C601E_0 = PlayerPistolRaiseSound;
						if (!audio_is_playing(l6F6C601E_0))
						{
							/// @DnDAction : YoYo Games.Audio.Play_Audio
							/// @DnDVersion : 1
							/// @DnDHash : 6007B6D5
							/// @DnDParent : 6F6C601E
							/// @DnDArgument : "soundid" "PlayerLanternSound"
							/// @DnDSaveInfo : "soundid" "PlayerLanternSound"
							audio_play_sound(PlayerLanternSound, 0, 0);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 2DE90B4F
							/// @DnDParent : 6F6C601E
							/// @DnDArgument : "var" "is_swim_stroke"
							is_swim_stroke = 0;
						}
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 1074F26E
					/// @DnDParent : 2B7FE33D
					else
					{
						/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
						/// @DnDVersion : 1
						/// @DnDHash : 45B88BF9
						/// @DnDParent : 1074F26E
						/// @DnDArgument : "soundid" "PlayerLanternSound"
						/// @DnDArgument : "not" "1"
						/// @DnDSaveInfo : "soundid" "PlayerLanternSound"
						var l45B88BF9_0 = PlayerLanternSound;
						if (!audio_is_playing(l45B88BF9_0))
						{
							/// @DnDAction : YoYo Games.Audio.Play_Audio
							/// @DnDVersion : 1
							/// @DnDHash : 4B629796
							/// @DnDParent : 45B88BF9
							/// @DnDArgument : "soundid" "PlayerPistolRaiseSound"
							/// @DnDSaveInfo : "soundid" "PlayerPistolRaiseSound"
							audio_play_sound(PlayerPistolRaiseSound, 0, 0);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 098F9DD3
							/// @DnDParent : 45B88BF9
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "var" "is_swim_stroke"
							is_swim_stroke = 1;
						}
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 1DED41A3
				/// @DnDParent : 02350384
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 291DED26
					/// @DnDParent : 1DED41A3
					/// @DnDArgument : "var" "is_swim_stroke"
					is_swim_stroke = 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3E10E837
	/// @DnDParent : 7AF906AE
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
			/// @DnDArgument : "spriteind" "PlayerSwimBubbleSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerSwimBubbleSpr"
			sprite_index = PlayerSwimBubbleSpr;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D7C5E06
			/// @DnDInput : 3
			/// @DnDParent : 45F00C0C
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "can_player_move_left"
			/// @DnDArgument : "var_2" "can_player_move_right"
			is_contextual_button_being_used = 0;
			can_player_move_left = 1;
			can_player_move_right = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30CEA09B
	/// @DnDParent : 7AF906AE
	/// @DnDArgument : "var" "contextual_inst.visible"
	contextual_inst.visible = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 31B4BC5D
	/// @DnDParent : 7AF906AE
	/// @DnDArgument : "expr" "!is_contextual_button_being_used && can_player_dive && is_player_surfaced && button_down"
	if(!is_contextual_button_being_used && can_player_dive && is_player_surfaced && button_down)
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
			/// @DnDInput : 6
			/// @DnDParent : 501345CA
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_5" "dive_sound_delay_max"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "is_player_surfaced"
			/// @DnDArgument : "var_2" "can_player_move_left"
			/// @DnDArgument : "var_3" "can_player_move_right"
			/// @DnDArgument : "var_4" "contextual_inst.visible"
			/// @DnDArgument : "var_5" "dive_sound_delay"
			is_contextual_button_being_used = 1;
			is_player_surfaced = 0;
			can_player_move_left = 0;
			can_player_move_right = 0;
			contextual_inst.visible = 0;
			dive_sound_delay = dive_sound_delay_max;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 47758BB7
			/// @DnDParent : 501345CA
			/// @DnDArgument : "spriteind" "PlayerSwimDiveSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerSwimDiveSpr"
			sprite_index = PlayerSwimDiveSpr;
			image_index = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6DCCB56B
	/// @DnDParent : 7AF906AE
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 11DDED58
		/// @DnDParent : 6DCCB56B
		/// @DnDArgument : "expr" "!is_contextual_button_being_used && can_player_surface && !is_player_surfaced && button_up"
		if(!is_contextual_button_being_used && can_player_surface && !is_player_surfaced && button_up)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 717D62E0
			/// @DnDParent : 11DDED58
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "contextual_inst.visible"
			contextual_inst.visible = 1;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5053C93F
			/// @DnDParent : 11DDED58
			/// @DnDArgument : "expr" "button_contextual"
			if(button_contextual)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E610603
				/// @DnDInput : 5
				/// @DnDParent : 5053C93F
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "var" "is_contextual_button_being_used"
				/// @DnDArgument : "var_1" "is_player_surfaced"
				/// @DnDArgument : "var_2" "can_player_move_left"
				/// @DnDArgument : "var_3" "can_player_move_right"
				/// @DnDArgument : "var_4" "contextual_inst.visible"
				is_contextual_button_being_used = 1;
				is_player_surfaced = 1;
				can_player_move_left = 0;
				can_player_move_right = 0;
				contextual_inst.visible = 0;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 3ED5EA6F
				/// @DnDParent : 5053C93F
				/// @DnDArgument : "spriteind" "PlayerSwimSurfaceSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerSwimSurfaceSpr"
				sprite_index = PlayerSwimSurfaceSpr;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 116480B0
				/// @DnDParent : 5053C93F
				/// @DnDArgument : "soundid" "PlayerBucket2Sound"
				/// @DnDSaveInfo : "soundid" "PlayerBucket2Sound"
				audio_play_sound(PlayerBucket2Sound, 0, 0);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3CAF926D
				/// @DnDParent : 5053C93F
				/// @DnDArgument : "xpos" "-5"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
				/// @DnDArgument : "layer" ""Frontmost""
				/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
				instance_create_layer(x + -5, y + 0, "Frontmost", PlayerSwimSplashObj);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 63F9881B
				/// @DnDParent : 5053C93F
				/// @DnDArgument : "xpos" "5"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "PlayerSwimSplashObj"
				/// @DnDArgument : "layer" ""Frontmost""
				/// @DnDSaveInfo : "objectid" "PlayerSwimSplashObj"
				instance_create_layer(x + 5, y + 0, "Frontmost", PlayerSwimSplashObj);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5DBB73AE
		/// @DnDParent : 6DCCB56B
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5EDD7469
			/// @DnDParent : 5DBB73AE
			/// @DnDArgument : "var" "contextual_inst.visible"
			contextual_inst.visible = 0;
		}
	}
}