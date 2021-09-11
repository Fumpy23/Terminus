/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 59B28A02
/// @DnDArgument : "expr" "duration - 1"
/// @DnDArgument : "var" "duration"
duration = duration - 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25C24010
/// @DnDArgument : "expr" "duration == 0"
if(duration == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 076ED1E0
	/// @DnDParent : 25C24010
	instance_destroy();
}