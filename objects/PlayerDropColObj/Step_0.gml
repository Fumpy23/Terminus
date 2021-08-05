/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 25066B0B
/// @DnDArgument : "x" "PlayerObj.x"
/// @DnDArgument : "y" "PlayerObj.y + sprite_height + 1"
x = PlayerObj.x;
y = PlayerObj.y + sprite_height + 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3D212DD1
/// @DnDArgument : "expr" "place_meeting(x, y, FloorObj) || place_meeting(x, y, FloorDropObj) || place_meeting(x, y, ClimbableObj) || place_meeting(x, y, LadderObj)"
if(place_meeting(x, y, FloorObj) || place_meeting(x, y, FloorDropObj) || place_meeting(x, y, ClimbableObj) || place_meeting(x, y, LadderObj))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E3202BB
	/// @DnDParent : 3D212DD1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "PlayerObj.can_player_drop"
	PlayerObj.can_player_drop = 1;
}