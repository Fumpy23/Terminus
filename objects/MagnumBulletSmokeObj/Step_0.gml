/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C3EB29A
/// @DnDArgument : "expr" "invisible_duration > 0"
if(invisible_duration > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63D6E7E6
	/// @DnDParent : 4C3EB29A
	/// @DnDArgument : "expr" "invisible_duration - 1"
	/// @DnDArgument : "var" "invisible_duration"
	invisible_duration = invisible_duration - 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 02CB6CBD
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 440A2359
	/// @DnDInput : 4
	/// @DnDParent : 02CB6CBD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_1" "image_idx"
	/// @DnDArgument : "expr_2" "visible_duration - 1"
	/// @DnDArgument : "expr_3" "image_alpha - 0.03"
	/// @DnDArgument : "var" "visible"
	/// @DnDArgument : "var_1" "image_index"
	/// @DnDArgument : "var_2" "visible_duration"
	/// @DnDArgument : "var_3" "image_alpha"
	visible = 1;
	image_index = image_idx;
	visible_duration = visible_duration - 1;
	image_alpha = image_alpha - 0.03;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 12FCEC2E
	/// @DnDParent : 02CB6CBD
	/// @DnDArgument : "expr" "visible_duration == 0"
	if(visible_duration == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B565514
		/// @DnDParent : 12FCEC2E
		instance_destroy();
	}
}