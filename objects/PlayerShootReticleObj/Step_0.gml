/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 34699669
/// @DnDArgument : "expr" "PlayerObj.is_gun_being_lowered && PlayerObj.can_player_ready_shoot"
if(PlayerObj.is_gun_being_lowered && PlayerObj.can_player_ready_shoot)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4D6FBF02
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerShootUSpr"
	if(PlayerObj.sprite_index == PlayerShootUSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4D88BEE4
		/// @DnDParent : 4D6FBF02
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? -4 : 3)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height - 1"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? -4 : 3);
		y = PlayerObj.y - PlayerObj.sprite_height - 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6947F8E5
		/// @DnDParent : 4D6FBF02
		image_angle = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 164EFA71
		/// @DnDParent : 4D6FBF02
		/// @DnDArgument : "var" "visible"
		visible = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4F8326C9
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerShootURSpr"
	if(PlayerObj.sprite_index == PlayerShootURSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 228B1512
		/// @DnDParent : 4F8326C9
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 11 : -11)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 4 : 5)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 11 : -11);
		y = PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 4 : 5);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 3CB05809
		/// @DnDParent : 4F8326C9
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -60 : 60"
		image_angle = PlayerObj.image_xscale == 1 ? -60 : 60;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A5C9DCC
		/// @DnDParent : 4F8326C9
		/// @DnDArgument : "var" "visible"
		visible = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 540B14C4
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerShootRSpr"
	if(PlayerObj.sprite_index == PlayerShootRSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3F635998
		/// @DnDParent : 540B14C4
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 12 : -12)"
		/// @DnDArgument : "y" "PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 8 : 9)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 12 : -12);
		y = PlayerObj.y - PlayerObj.sprite_height + (PlayerObj.image_xscale == 1 ? 8 : 9);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 748AE2D8
		/// @DnDParent : 540B14C4
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -90 : 90"
		image_angle = PlayerObj.image_xscale == 1 ? -90 : 90;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73CD75DB
		/// @DnDParent : 540B14C4
		/// @DnDArgument : "var" "visible"
		visible = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1D531C6F
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerShootDRSpr"
	if(PlayerObj.sprite_index == PlayerShootDRSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2A117F68
		/// @DnDParent : 1D531C6F
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 10 : -10)"
		/// @DnDArgument : "y" "PlayerObj.y - (PlayerObj.image_xscale == 1 ? 10 : 9)"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 10 : -10);
		y = PlayerObj.y - (PlayerObj.image_xscale == 1 ? 10 : 9);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6E7AFAAF
		/// @DnDParent : 1D531C6F
		/// @DnDArgument : "angle" "PlayerObj.image_xscale == 1 ? -120 : 120"
		image_angle = PlayerObj.image_xscale == 1 ? -120 : 120;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43FC0A09
		/// @DnDParent : 1D531C6F
		/// @DnDArgument : "var" "visible"
		visible = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2EF3253B
	/// @DnDParent : 34699669
	/// @DnDArgument : "expr" "PlayerObj.sprite_index == PlayerShootDSpr"
	if(PlayerObj.sprite_index == PlayerShootDSpr)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 75356022
		/// @DnDParent : 2EF3253B
		/// @DnDArgument : "x" "PlayerObj.x + (PlayerObj.image_xscale == 1 ? 0 : 1)"
		/// @DnDArgument : "y" "PlayerObj.y + 1"
		x = PlayerObj.x + (PlayerObj.image_xscale == 1 ? 0 : 1);
		y = PlayerObj.y + 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 0FBF832A
		/// @DnDParent : 2EF3253B
		/// @DnDArgument : "angle" "180"
		image_angle = 180;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5493A640
		/// @DnDParent : 2EF3253B
		/// @DnDArgument : "var" "visible"
		visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 13F0734F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F0AFCA3
	/// @DnDParent : 13F0734F
	/// @DnDArgument : "var" "visible"
	visible = 0;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 197252DC
/// @DnDArgument : "code" "/*var collision_array = [];$(13_10)var obj_inst = null;$(13_10)$(13_10)for (var i = 0; i < instance_number(WallObj); i += 1) {$(13_10)	obj_inst = instance_find(WallObj, i);$(13_10)	if (place_meeting(x, y, obj_inst)) {$(13_10)		collision_array[array_length_1d(collision_array)] = obj_inst;$(13_10)	}$(13_10)}$(13_10)$(13_10)for (var i = 0; i < instance_number(FloorObj); i += 1) {$(13_10)	obj_inst = instance_find(FloorObj, i);$(13_10)	if (place_meeting(x, y, obj_inst)) {$(13_10)		collision_array[array_length_1d(collision_array)] = obj_inst;$(13_10)	}$(13_10)}$(13_10)$(13_10)var shortest_dist = 460;$(13_10)var shoot_x = 0;$(13_10)var shoot_y = 0;$(13_10)$(13_10)for (var i = 0; i <array_length_1d(collision_array); i += 1) {$(13_10)	if (PlayerObj.sprite_index == PlayerShootUSpr) {$(13_10)		shoot_x = x;$(13_10)		shoot_y = collision_array[i].y;$(13_10)	}$(13_10)	collision_array[i].x $(13_10)	if (sqrt(sqr(x - collision_array[i].x) + sqr(y - collision_array[i].y)) < shortest_dist) {$(13_10)		shortest_dist = sqrt(sqr(x - collision_array[i].x) + sqr(y - collision_array[i].y));$(13_10)		shoot_x = collision_$(13_10)	}$(13_10)}*/"
/*var collision_array = [];
var obj_inst = null;

for (var i = 0; i < instance_number(WallObj); i += 1) {
	obj_inst = instance_find(WallObj, i);
	if (place_meeting(x, y, obj_inst)) {
		collision_array[array_length_1d(collision_array)] = obj_inst;
	}
}

for (var i = 0; i < instance_number(FloorObj); i += 1) {
	obj_inst = instance_find(FloorObj, i);
	if (place_meeting(x, y, obj_inst)) {
		collision_array[array_length_1d(collision_array)] = obj_inst;
	}
}

var shortest_dist = 460;
var shoot_x = 0;
var shoot_y = 0;

for (var i = 0; i <array_length_1d(collision_array); i += 1) {
	if (PlayerObj.sprite_index == PlayerShootUSpr) {
		shoot_x = x;
		shoot_y = collision_array[i].y;
	}
	collision_array[i].x 
	if (sqrt(sqr(x - collision_array[i].x) + sqr(y - collision_array[i].y)) < shortest_dist) {
		shortest_dist = sqrt(sqr(x - collision_array[i].x) + sqr(y - collision_array[i].y));
		shoot_x = collision_
	}
}*//**/