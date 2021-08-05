/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7663F3E9
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "climbable_drawer_inst"
climbable_drawer_inst = noone;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 793FB3BD
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "climbable_drawer_inst"
/// @DnDArgument : "objectid" "ClimbableDrawerObj"
/// @DnDArgument : "layer" ""Back""
/// @DnDSaveInfo : "objectid" "ClimbableDrawerObj"
climbable_drawer_inst = instance_create_layer(x + 0, y + 0, "Back", ClimbableDrawerObj);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4835AD76
/// @DnDArgument : "var" "climbable_drawer_inst.visible"
climbable_drawer_inst.visible = 0;