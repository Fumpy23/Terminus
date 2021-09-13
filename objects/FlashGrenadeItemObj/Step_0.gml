/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5220A9A4
/// @DnDInput : 3
/// @DnDArgument : "expr" "hspeed_reduce_delay - 1"
/// @DnDArgument : "expr_1" "vspeed_reduce_delay - 1"
/// @DnDArgument : "expr_2" "visible_delay - 1"
/// @DnDArgument : "var" "hspeed_reduce_delay"
/// @DnDArgument : "var_1" "vspeed_reduce_delay"
/// @DnDArgument : "var_2" "visible_delay"
hspeed_reduce_delay = hspeed_reduce_delay - 1;
vspeed_reduce_delay = vspeed_reduce_delay - 1;
visible_delay = visible_delay - 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 384E4BA4
/// @DnDArgument : "expr" "place_meeting(x + hspeed, y, WallObj)"
if(place_meeting(x + hspeed, y, WallObj))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2848452D
	/// @DnDInput : 2
	/// @DnDParent : 384E4BA4
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "hspeed"
	/// @DnDArgument : "var_1" "is_x_stopped"
	hspeed = 0;
	is_x_stopped = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 13B3923B
/// @DnDArgument : "expr" "place_meeting(x, y + vspeed, FloorObj) || place_meeting(x, y + vspeed, FloorDropObj)"
if(place_meeting(x, y + vspeed, FloorObj) || place_meeting(x, y + vspeed, FloorDropObj))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 56862B0B
	/// @DnDParent : 13B3923B
	/// @DnDArgument : "expr" "!is_y_stopped"
	if(!is_y_stopped)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 457A6C3E
		/// @DnDParent : 56862B0B
		/// @DnDArgument : "soundid" "PlayerClimbingSound"
		/// @DnDSaveInfo : "soundid" "PlayerClimbingSound"
		audio_play_sound(PlayerClimbingSound, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 603FD61A
	/// @DnDInput : 2
	/// @DnDParent : 13B3923B
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "var_1" "is_y_stopped"
	vspeed = 0;
	is_y_stopped = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 638AB1C4
/// @DnDArgument : "expr" "!is_x_stopped && hspeed_reduce_delay == 0"
if(!is_x_stopped && hspeed_reduce_delay == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D6A70E5
	/// @DnDParent : 638AB1C4
	/// @DnDArgument : "expr" "hspeed_reduce_delay_max"
	/// @DnDArgument : "var" "hspeed_reduce_delay"
	hspeed_reduce_delay = hspeed_reduce_delay_max;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6E0A6E5B
	/// @DnDParent : 638AB1C4
	/// @DnDArgument : "expr" "hspeed != 0"
	if(hspeed != 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AD30640
		/// @DnDParent : 6E0A6E5B
		/// @DnDArgument : "expr" "hspeed - sign(hspeed)"
		/// @DnDArgument : "var" "hspeed"
		hspeed = hspeed - sign(hspeed);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7B25DA87
	/// @DnDParent : 638AB1C4
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14880B7E
		/// @DnDParent : 7B25DA87
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "is_x_stopped"
		is_x_stopped = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 647C427B
/// @DnDArgument : "expr" "!is_y_stopped && vspeed_reduce_delay == 0"
if(!is_y_stopped && vspeed_reduce_delay == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28090CEA
	/// @DnDParent : 647C427B
	/// @DnDArgument : "expr" "vspeed_reduce_delay_max"
	/// @DnDArgument : "var" "vspeed_reduce_delay"
	vspeed_reduce_delay = vspeed_reduce_delay_max;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 28A878AF
	/// @DnDParent : 647C427B
	/// @DnDArgument : "expr" "vspeed != 4"
	if(vspeed != 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39778B25
		/// @DnDParent : 28A878AF
		/// @DnDArgument : "expr" "vspeed + 1"
		/// @DnDArgument : "var" "vspeed"
		vspeed = vspeed + 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 45A8C018
/// @DnDArgument : "expr" "is_x_stopped && is_y_stopped"
if(is_x_stopped && is_y_stopped)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 55389A7C
	/// @DnDParent : 45A8C018
	/// @DnDArgument : "expr" "!has_exploded"
	if(!has_exploded)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 5ED80698
		/// @DnDParent : 55389A7C
		image_angle = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 16D5C0C8
		/// @DnDParent : 55389A7C
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "FlashGrenadeItemLaySpr"
		/// @DnDSaveInfo : "spriteind" "FlashGrenadeItemLaySpr"
		sprite_index = FlashGrenadeItemLaySpr;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 494501A3
		/// @DnDParent : 55389A7C
		/// @DnDArgument : "expr" "time_until_detonation - 1"
		/// @DnDArgument : "var" "time_until_detonation"
		time_until_detonation = time_until_detonation - 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4DC25512
		/// @DnDParent : 55389A7C
		/// @DnDArgument : "expr" "time_until_detonation == 0"
		if(time_until_detonation == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 492399EA
			/// @DnDParent : 4DC25512
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "has_exploded"
			has_exploded = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 766BDB5E
	/// @DnDParent : 45A8C018
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 311E8F35
		/// @DnDParent : 766BDB5E
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "FlashGrenadeItemFlashSpr"
		/// @DnDSaveInfo : "spriteind" "FlashGrenadeItemFlashSpr"
		sprite_index = FlashGrenadeItemFlashSpr;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7CC0E1DA
		/// @DnDParent : 766BDB5E
		/// @DnDArgument : "expr" "visible_delay <= 0"
		if(visible_delay <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 142B1338
			/// @DnDInput : 2
			/// @DnDParent : 7CC0E1DA
			/// @DnDArgument : "expr" "!visible"
			/// @DnDArgument : "expr_1" "visible_delay_max"
			/// @DnDArgument : "var" "visible"
			/// @DnDArgument : "var_1" "visible_delay"
			visible = !visible;
			visible_delay = visible_delay_max;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2284419B
		/// @DnDParent : 766BDB5E
		/// @DnDArgument : "expr" "!flash_started"
		if(!flash_started)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 217CA89C
			/// @DnDInput : 3
			/// @DnDParent : 2284419B
			/// @DnDArgument : "expr" "0.01"
			/// @DnDArgument : "expr_1" "0.01"
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "var" "image_xscale"
			/// @DnDArgument : "var_1" "image_yscale"
			/// @DnDArgument : "var_2" "flash_started"
			image_xscale = 0.01;
			image_yscale = 0.01;
			flash_started = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DF5DE1A
		/// @DnDParent : 766BDB5E
		/// @DnDArgument : "expr" "flash_duration - 1"
		/// @DnDArgument : "var" "flash_duration"
		flash_duration = flash_duration - 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 58333A0C
		/// @DnDParent : 766BDB5E
		/// @DnDArgument : "expr" "flash_duration > 0 && image_xscale < 1"
		if(flash_duration > 0 && image_xscale < 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54E16722
			/// @DnDInput : 2
			/// @DnDParent : 58333A0C
			/// @DnDArgument : "expr" "image_xscale + 0.03"
			/// @DnDArgument : "expr_1" "image_yscale + 0.03"
			/// @DnDArgument : "var" "image_xscale"
			/// @DnDArgument : "var_1" "image_yscale"
			image_xscale = image_xscale + 0.03;
			image_yscale = image_yscale + 0.03;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 565608E7
		/// @DnDParent : 766BDB5E
		/// @DnDArgument : "expr" "flash_duration <= 0"
		if(flash_duration <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C0D878A
			/// @DnDInput : 2
			/// @DnDParent : 565608E7
			/// @DnDArgument : "expr" "image_xscale - 0.03"
			/// @DnDArgument : "expr_1" "image_yscale - 0.03"
			/// @DnDArgument : "var" "image_xscale"
			/// @DnDArgument : "var_1" "image_yscale"
			image_xscale = image_xscale - 0.03;
			image_yscale = image_yscale - 0.03;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1A747A52
		/// @DnDParent : 766BDB5E
		/// @DnDArgument : "expr" "image_xscale <= 0"
		if(image_xscale <= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 055133F2
			/// @DnDParent : 1A747A52
			instance_destroy();
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3176C809
/// @DnDArgument : "expr" "!(is_x_stopped && is_y_stopped)"
if(!(is_x_stopped && is_y_stopped))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 000992FA
	/// @DnDParent : 3176C809
	/// @DnDArgument : "angle" "rotation_speed"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += rotation_speed;
}