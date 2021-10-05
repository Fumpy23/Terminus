/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 694B6583
/// @DnDArgument : "expr" "image_index >= image_number - 1"
if(image_index >= image_number - 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0FE082FC
	/// @DnDParent : 694B6583
	instance_destroy();
}