/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0713D50F
/// @DnDInput : 21
/// @DnDArgument : "expr_1" "5"
/// @DnDArgument : "expr_2" "player_splash_delay_max"
/// @DnDArgument : "expr_3" "1"
/// @DnDArgument : "expr_7" "1"
/// @DnDArgument : "expr_8" "1"
/// @DnDArgument : "expr_9" "1"
/// @DnDArgument : "expr_10" "1"
/// @DnDArgument : "expr_11" "noone"
/// @DnDArgument : "expr_13" "1"
/// @DnDArgument : "expr_18" "40"
/// @DnDArgument : "expr_19" "-1"
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "var_1" "player_splash_delay_max"
/// @DnDArgument : "var_2" "player_splash_delay"
/// @DnDArgument : "var_3" "is_left_foot_splash"
/// @DnDArgument : "var_4" "button_left"
/// @DnDArgument : "var_5" "button_right"
/// @DnDArgument : "var_6" "button_contextual"
/// @DnDArgument : "var_7" "can_player_move_left"
/// @DnDArgument : "var_8" "can_player_move_right"
/// @DnDArgument : "var_9" "can_player_dive"
/// @DnDArgument : "var_10" "can_player_surface"
/// @DnDArgument : "var_11" "contextual_inst"
/// @DnDArgument : "var_12" "button_down"
/// @DnDArgument : "var_13" "is_player_surfaced"
/// @DnDArgument : "var_14" "is_contextual_button_being_used"
/// @DnDArgument : "var_15" "button_up"
/// @DnDArgument : "var_16" "is_player_hurt"
/// @DnDArgument : "var_17" "button_hurt"
/// @DnDArgument : "var_18" "dive_sound_delay_max"
/// @DnDArgument : "var_19" "dive_sound_delay"
/// @DnDArgument : "var_20" "is_swim_stroke"
hspeed = 0;
player_splash_delay_max = 5;
player_splash_delay = player_splash_delay_max;
is_left_foot_splash = 1;
button_left = 0;
button_right = 0;
button_contextual = 0;
can_player_move_left = 1;
can_player_move_right = 1;
can_player_dive = 1;
can_player_surface = 1;
contextual_inst = noone;
button_down = 0;
is_player_surfaced = 1;
is_contextual_button_being_used = 0;
button_up = 0;
is_player_hurt = 0;
button_hurt = 0;
dive_sound_delay_max = 40;
dive_sound_delay = -1;
is_swim_stroke = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 74DE8DEF
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "contextual_inst"
/// @DnDArgument : "objectid" "ContextualButtonObj"
/// @DnDArgument : "layer" ""Front""
/// @DnDSaveInfo : "objectid" "ContextualButtonObj"
contextual_inst = instance_create_layer(x + 0, y + 0, "Front", ContextualButtonObj);