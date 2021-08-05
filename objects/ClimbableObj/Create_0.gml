/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E6338DA
/// @DnDInput : 2
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "expr_1" "noone"
/// @DnDArgument : "var" "wall_left_inst"
/// @DnDArgument : "var_1" "wall_right_inst"
wall_left_inst = noone;
wall_right_inst = noone;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 26CC4189
/// @DnDArgument : "var" "wall_left_inst"
/// @DnDArgument : "objectid" "InvisibleWallObj"
/// @DnDArgument : "layer" ""Back""
/// @DnDSaveInfo : "objectid" "InvisibleWallObj"
wall_left_inst = instance_create_layer(0, 0, "Back", InvisibleWallObj);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 73F77276
/// @DnDArgument : "var" "wall_right_inst"
/// @DnDArgument : "objectid" "InvisibleWallObj"
/// @DnDArgument : "layer" ""Back""
/// @DnDSaveInfo : "objectid" "InvisibleWallObj"
wall_right_inst = instance_create_layer(0, 0, "Back", InvisibleWallObj);