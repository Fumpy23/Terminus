/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0651DBAA
/// @DnDInput : 7
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_1" "hspeed_reduce_delay_max"
/// @DnDArgument : "expr_2" "5"
/// @DnDArgument : "expr_3" "vspeed_reduce_delay_max"
/// @DnDArgument : "expr_6" "room_height + sprite_height + 1"
/// @DnDArgument : "var" "hspeed_reduce_delay_max"
/// @DnDArgument : "var_1" "hspeed_reduce_delay"
/// @DnDArgument : "var_2" "vspeed_reduce_delay_max"
/// @DnDArgument : "var_3" "vspeed_reduce_delay"
/// @DnDArgument : "var_4" "is_x_stopped"
/// @DnDArgument : "var_5" "is_y_stopped"
/// @DnDArgument : "var_6" "y_collision"
hspeed_reduce_delay_max = 8;
hspeed_reduce_delay = hspeed_reduce_delay_max;
vspeed_reduce_delay_max = 5;
vspeed_reduce_delay = vspeed_reduce_delay_max;
is_x_stopped = 0;
is_y_stopped = 0;
y_collision = room_height + sprite_height + 1;