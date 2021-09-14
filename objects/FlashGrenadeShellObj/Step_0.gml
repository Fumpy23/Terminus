/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36B50791
/// @DnDArgument : "expr" "image_alpha - 0.01"
/// @DnDArgument : "var" "image_alpha"
image_alpha = image_alpha - 0.01;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 461FBA0D
/// @DnDArgument : "expr" "image_alpha == 0"
if(image_alpha == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13D02AC9
	/// @DnDParent : 461FBA0D
	instance_destroy();
}