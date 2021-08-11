/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 49BD8999
/// @DnDDisabled : 1
/// @DnDArgument : "x" "PlayerObj.x"
/// @DnDArgument : "y" "PlayerObj.y + sprite_height + 1"


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5874B32C
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "place_meeting(x, y, WallObj)"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C067BC5
/// @DnDDisabled : 1
/// @DnDParent : 5874B32C
/// @DnDArgument : "var" "PlayerObj.can_player_drop"