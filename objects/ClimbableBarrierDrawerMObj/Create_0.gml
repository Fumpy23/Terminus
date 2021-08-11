/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 51834EC7
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78338457
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "barrier_inst"
barrier_inst = noone;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 45EB9DD1
/// @DnDArgument : "var" "barrier_inst"
/// @DnDArgument : "objectid" "BarrierDrawerMObj"
/// @DnDArgument : "layer" ""Back""
/// @DnDSaveInfo : "objectid" "BarrierDrawerMObj"
barrier_inst = instance_create_layer(0, 0, "Back", BarrierDrawerMObj);