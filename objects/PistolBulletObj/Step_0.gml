/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 32969B61
/// @DnDArgument : "expr" "distance_to_object(WallObj) <= 5 || distance_to_object(FloorObj) <= 5 || distance_to_object(FloorDropObj) <= 5"
if(distance_to_object(WallObj) <= 5 || distance_to_object(FloorObj) <= 5 || distance_to_object(FloorDropObj) <= 5)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2CA75AEC
	/// @DnDParent : 32969B61
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "PistolBulletExplodeObj"
	/// @DnDArgument : "layer" ""Front""
	/// @DnDSaveInfo : "objectid" "PistolBulletExplodeObj"
	instance_create_layer(x + 0, y + 0, "Front", PistolBulletExplodeObj);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D78B354
	/// @DnDParent : 32969B61
	instance_destroy();
}