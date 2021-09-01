/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 1EA63255
/// @DnDArgument : "var" "x - 5 > room_width || x + 5 < 0 || y + 5 < 0 || y - 5 > room_height"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
while (!(x - 5 > room_width || x + 5 < 0 || y + 5 < 0 || y - 5 > room_height == 1)) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1DC1207A
	/// @DnDParent : 1EA63255
	/// @DnDArgument : "expr" "place_meeting(x, y, WallObj) || place_meeting(x, y, FloorObj)"
	if(place_meeting(x, y, WallObj) || place_meeting(x, y, FloorObj))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2CA75AEC
		/// @DnDParent : 1DC1207A
		/// @DnDArgument : "xpos" "round(-x_step / 2)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "round(-y_step / 2)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "PistolBulletExplodeObj"
		/// @DnDArgument : "layer" ""Front""
		/// @DnDSaveInfo : "objectid" "PistolBulletExplodeObj"
		instance_create_layer(x + round(-x_step / 2), y + round(-y_step / 2), "Front", PistolBulletExplodeObj);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5D78B354
		/// @DnDParent : 1DC1207A
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CEE0EC5
	/// @DnDInput : 2
	/// @DnDParent : 1EA63255
	/// @DnDArgument : "expr" "x + x_step"
	/// @DnDArgument : "expr_1" "y + y_step"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = x + x_step;
	y = y + y_step;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 70976E48
instance_destroy();