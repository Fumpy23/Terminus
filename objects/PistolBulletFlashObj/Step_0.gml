/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3644EA8E
/// @DnDArgument : "expr" "image_index >= image_number - 1"
if(image_index >= image_number - 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66F2950F
	/// @DnDParent : 3644EA8E
	instance_destroy();
}