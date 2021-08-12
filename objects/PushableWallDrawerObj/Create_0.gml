/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1843CBFA
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "wall_drawer_inst"
wall_drawer_inst = noone;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1C00CEFB
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "wall_drawer_inst"
/// @DnDArgument : "objectid" "DrawerWallObj"
/// @DnDArgument : "layer" ""Back""
/// @DnDSaveInfo : "objectid" "DrawerWallObj"
wall_drawer_inst = instance_create_layer(x + 0, y + 0, "Back", DrawerWallObj);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F2F92BE
/// @DnDArgument : "var" "wall_drawer_inst.visible"
wall_drawer_inst.visible = 0;