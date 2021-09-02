/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C7918CC
/// @DnDInput : 38
/// @DnDArgument : "expr_2" "2"
/// @DnDArgument : "expr_3" "300"
/// @DnDArgument : "expr_4" "blink_time_max"
/// @DnDArgument : "expr_6" "-1"
/// @DnDArgument : "expr_9" "noone"
/// @DnDArgument : "expr_10" "noone"
/// @DnDArgument : "expr_13" "3"
/// @DnDArgument : "expr_14" "noone"
/// @DnDArgument : "expr_17" "noone"
/// @DnDArgument : "expr_19" "1"
/// @DnDArgument : "expr_21" "noone"
/// @DnDArgument : "expr_24" "15"
/// @DnDArgument : "expr_26" "15"
/// @DnDArgument : "expr_28" "1"
/// @DnDArgument : "expr_29" "1"
/// @DnDArgument : "expr_32" "1"
/// @DnDArgument : "var" "button_left"
/// @DnDArgument : "var_1" "button_right"
/// @DnDArgument : "var_2" "run_speed"
/// @DnDArgument : "var_3" "blink_time_max"
/// @DnDArgument : "var_4" "blink_time"
/// @DnDArgument : "var_5" "is_player_climbing"
/// @DnDArgument : "var_6" "player_climbing_speed"
/// @DnDArgument : "var_7" "is_contextual_button_being_used"
/// @DnDArgument : "var_8" "button_contextual"
/// @DnDArgument : "var_9" "contextual_inst"
/// @DnDArgument : "var_10" "climbable_inst"
/// @DnDArgument : "var_11" "button_down"
/// @DnDArgument : "var_12" "is_player_falling"
/// @DnDArgument : "var_13" "player_falling_speed"
/// @DnDArgument : "var_14" "floor_inst"
/// @DnDArgument : "var_15" "can_player_move_left"
/// @DnDArgument : "var_16" "can_player_move_right"
/// @DnDArgument : "var_17" "player_drop_inst"
/// @DnDArgument : "var_18" "can_player_drop"
/// @DnDArgument : "var_19" "player_pushing_speed"
/// @DnDArgument : "var_20" "is_player_pushing"
/// @DnDArgument : "var_21" "pushable_inst"
/// @DnDArgument : "var_22" "button_contextual_hold"
/// @DnDArgument : "var_23" "button_up"
/// @DnDArgument : "var_24" "walking_sound_delay_max"
/// @DnDArgument : "var_25" "walking_sound_delay"
/// @DnDArgument : "var_26" "climbing_sound_delay_max"
/// @DnDArgument : "var_27" "climbing_sound_delay"
/// @DnDArgument : "var_28" "can_player_ready_shoot"
/// @DnDArgument : "var_29" "can_player_shoot"
/// @DnDArgument : "var_30" "button_ready_shoot"
/// @DnDArgument : "var_31" "button_shoot"
/// @DnDArgument : "var_32" "is_player_readying_shoot"
/// @DnDArgument : "var_33" "is_player_finishing_shoot"
/// @DnDArgument : "var_34" "is_gun_being_raised"
/// @DnDArgument : "var_35" "is_gun_being_lowered"
/// @DnDArgument : "var_36" "is_player_shooting"
/// @DnDArgument : "var_37" "is_reticle_attached"
button_left = 0;
button_right = 0;
run_speed = 2;
blink_time_max = 300;
blink_time = blink_time_max;
is_player_climbing = 0;
player_climbing_speed = -1;
is_contextual_button_being_used = 0;
button_contextual = 0;
contextual_inst = noone;
climbable_inst = noone;
button_down = 0;
is_player_falling = 0;
player_falling_speed = 3;
floor_inst = noone;
can_player_move_left = 0;
can_player_move_right = 0;
player_drop_inst = noone;
can_player_drop = 0;
player_pushing_speed = 1;
is_player_pushing = 0;
pushable_inst = noone;
button_contextual_hold = 0;
button_up = 0;
walking_sound_delay_max = 15;
walking_sound_delay = 0;
climbing_sound_delay_max = 15;
climbing_sound_delay = 0;
can_player_ready_shoot = 1;
can_player_shoot = 1;
button_ready_shoot = 0;
button_shoot = 0;
is_player_readying_shoot = 1;
is_player_finishing_shoot = 0;
is_gun_being_raised = 0;
is_gun_being_lowered = 0;
is_player_shooting = 0;
is_reticle_attached = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 443F6272
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "contextual_inst"
/// @DnDArgument : "objectid" "ContextualButtonObj"
/// @DnDArgument : "layer" ""Front""
/// @DnDSaveInfo : "objectid" "ContextualButtonObj"
contextual_inst = instance_create_layer(x + 0, y + 0, "Front", ContextualButtonObj);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0FAE0479
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "player_drop_inst"
/// @DnDArgument : "objectid" "PlayerDropColObj"
/// @DnDArgument : "layer" ""Back""
/// @DnDSaveInfo : "objectid" "PlayerDropColObj"
player_drop_inst = instance_create_layer(x + 0, y + 0, "Back", PlayerDropColObj);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 018BB865
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "player_reticle_inst"
/// @DnDArgument : "objectid" "PlayerShootReticleObj"
/// @DnDArgument : "layer" ""Middlin""
/// @DnDSaveInfo : "objectid" "PlayerShootReticleObj"
player_reticle_inst = instance_create_layer(x + 0, y + 0, "Middlin", PlayerShootReticleObj);