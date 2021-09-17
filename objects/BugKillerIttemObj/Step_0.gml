/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 489B0F44
/// @DnDInput : 2
/// @DnDArgument : "expr" "hspeed_reduce_delay - 1"
/// @DnDArgument : "expr_1" "vspeed_reduce_delay - 1"
/// @DnDArgument : "var" "hspeed_reduce_delay"
/// @DnDArgument : "var_1" "vspeed_reduce_delay"
hspeed_reduce_delay = hspeed_reduce_delay - 1;
vspeed_reduce_delay = vspeed_reduce_delay - 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0B8E785D
/// @DnDArgument : "expr" "place_meeting(x + hspeed, y, WallObj)"
if(place_meeting(x + hspeed, y, WallObj))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3456C83D
	/// @DnDInput : 2
	/// @DnDParent : 0B8E785D
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "hspeed"
	/// @DnDArgument : "var_1" "is_x_stopped"
	hspeed = 0;
	is_x_stopped = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 799A8444
/// @DnDArgument : "expr" "place_meeting(x, y + vspeed, FloorObj) || place_meeting(x, y + vspeed, FloorDropObj)"
if(place_meeting(x, y + vspeed, FloorObj) || place_meeting(x, y + vspeed, FloorDropObj))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 63CD1BCD
	/// @DnDParent : 799A8444
	/// @DnDArgument : "expr" "!is_y_stopped"
	if(!is_y_stopped)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 4C9F88A7
		/// @DnDParent : 63CD1BCD
		/// @DnDArgument : "soundid" "PlayerClimbingSound"
		/// @DnDSaveInfo : "soundid" "PlayerClimbingSound"
		audio_play_sound(PlayerClimbingSound, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 6F49FA79
		/// @DnDParent : 63CD1BCD
		/// @DnDArgument : "code" "var floor_inst = instance_place(x, y + vspeed, FloorObj);$(13_10)if (floor_inst != noone) {$(13_10)	y_collision = floor_inst.y - 1;$(13_10)}$(13_10)$(13_10)floor_inst = instance_place(x, y + vspeed, FloorDropObj);$(13_10)if (floor_inst != noone && floor_inst.y < y_collision) {$(13_10)	y_collision = floor_inst.y - 1;$(13_10)}$(13_10)$(13_10)y = y_collision;"
		var floor_inst = instance_place(x, y + vspeed, FloorObj);
		if (floor_inst != noone) {
			y_collision = floor_inst.y - 1;
		}
		
		floor_inst = instance_place(x, y + vspeed, FloorDropObj);
		if (floor_inst != noone && floor_inst.y < y_collision) {
			y_collision = floor_inst.y - 1;
		}
		
		y = y_collision;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48265DF4
	/// @DnDInput : 2
	/// @DnDParent : 799A8444
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "var_1" "is_y_stopped"
	vspeed = 0;
	is_y_stopped = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 10A9FDAB
/// @DnDArgument : "expr" "!is_x_stopped && hspeed_reduce_delay == 0"
if(!is_x_stopped && hspeed_reduce_delay == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A080977
	/// @DnDParent : 10A9FDAB
	/// @DnDArgument : "expr" "hspeed_reduce_delay_max"
	/// @DnDArgument : "var" "hspeed_reduce_delay"
	hspeed_reduce_delay = hspeed_reduce_delay_max;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 44CB6413
	/// @DnDParent : 10A9FDAB
	/// @DnDArgument : "expr" "hspeed != 0"
	if(hspeed != 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24EC4A52
		/// @DnDParent : 44CB6413
		/// @DnDArgument : "expr" "hspeed - sign(hspeed)"
		/// @DnDArgument : "var" "hspeed"
		hspeed = hspeed - sign(hspeed);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0163199F
	/// @DnDParent : 10A9FDAB
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36ACEADC
		/// @DnDParent : 0163199F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "is_x_stopped"
		is_x_stopped = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E2E34AE
/// @DnDArgument : "expr" "!is_y_stopped && vspeed_reduce_delay == 0"
if(!is_y_stopped && vspeed_reduce_delay == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41D91181
	/// @DnDParent : 7E2E34AE
	/// @DnDArgument : "expr" "vspeed_reduce_delay_max"
	/// @DnDArgument : "var" "vspeed_reduce_delay"
	vspeed_reduce_delay = vspeed_reduce_delay_max;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 38F3AF61
	/// @DnDParent : 7E2E34AE
	/// @DnDArgument : "expr" "vspeed != 4"
	if(vspeed != 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5638D1E8
		/// @DnDParent : 38F3AF61
		/// @DnDArgument : "expr" "vspeed + 1"
		/// @DnDArgument : "var" "vspeed"
		vspeed = vspeed + 1;
	}
}