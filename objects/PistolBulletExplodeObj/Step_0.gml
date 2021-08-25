/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3F289955
/// @DnDArgument : "expr" "image_index >= image_number - 1"
if(image_index >= image_number - 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09129348
	/// @DnDParent : 3F289955
	instance_destroy();
}