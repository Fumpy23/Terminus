/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65991AA1
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "floor_inst"
floor_inst = noone;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6E8FB487
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "floor_inst"
/// @DnDArgument : "objectid" "BlueFloorDropObj"
/// @DnDArgument : "layer" ""Back""
/// @DnDSaveInfo : "objectid" "BlueFloorDropObj"
floor_inst = instance_create_layer(x + 0, y + 0, "Back", BlueFloorDropObj);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7EC11168
/// @DnDArgument : "var" "floor_inst.visible"
floor_inst.visible = 0;