/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15A67410
/// @DnDArgument : "var" "contextual_inst.visible"
contextual_inst.visible = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 043815BC
/// @DnDArgument : "expr" "!is_contextual_button_being_used &&  !contextual_inst.visible && image_xscale == 1 && can_player_move_right"
if(!is_contextual_button_being_used &&  !contextual_inst.visible && image_xscale == 1 && can_player_move_right)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6DFA62CC
	/// @DnDBreak : 1

	/// @DnDParent : 043815BC
	/// @DnDArgument : "code" "pushable_inst = noone;$(13_10)var pushable_found = 0;$(13_10)$(13_10)for (var i = 0; i < instance_number(PushableObj) && !pushable_found; i += 1) {$(13_10)	pushable_inst = instance_find(PushableObj, i);$(13_10)	if (pushable_inst != noone && place_meeting(x + 8, y, pushable_inst) && !place_meeting(x, y, pushable_inst) && !place_meeting(x + 8, y, WallObj) && !pushable_found) {$(13_10)		for (var j = 0; j < instance_number(WallObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(WallObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		for (var j = 0; j < instance_number(BarrierObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(BarrierObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		for (var j = 0; j < instance_number(ClimbableObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(ClimbableObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		for (var j = 0; j < instance_number(PushableObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(PushableObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.id != pushable_inst.id && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if (pushable_inst != noone) {$(13_10)			pushable_found = 1;$(13_10)		}$(13_10)	}$(13_10)}"
	pushable_inst = noone;
	var pushable_found = 0;
	
	for (var i = 0; i < instance_number(PushableObj) && !pushable_found; i += 1) {
		pushable_inst = instance_find(PushableObj, i);
		if (pushable_inst != noone && place_meeting(x + 8, y, pushable_inst) && !place_meeting(x, y, pushable_inst) && !place_meeting(x + 8, y, WallObj) && !pushable_found) {
			for (var j = 0; j < instance_number(WallObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(WallObj, j);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			for (var j = 0; j < instance_number(BarrierObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(BarrierObj, j);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			for (var j = 0; j < instance_number(ClimbableObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(ClimbableObj, j);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			for (var j = 0; j < instance_number(PushableObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(PushableObj, j);
				if (blocker_inst != noone && blocker_inst.id != pushable_inst.id && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) - 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) - 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			if (pushable_inst != noone) {
				pushable_found = 1;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4B7C7ABA
	/// @DnDParent : 043815BC
	/// @DnDArgument : "expr" "pushable_found"
	if(pushable_found)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1545D0F4
		/// @DnDParent : 4B7C7ABA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 31CB563C
		/// @DnDParent : 4B7C7ABA
		/// @DnDArgument : "expr" "button_contextual"
		if(button_contextual)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A161F22
			/// @DnDInput : 5
			/// @DnDParent : 31CB563C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_2" "pushable_inst.x - round(pushable_inst.sprite_width / 2) - 5"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "expr_4" "player_pushing_speed"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "is_player_pushing"
			/// @DnDArgument : "var_2" "x"
			/// @DnDArgument : "var_3" "player_pushing_speed"
			/// @DnDArgument : "var_4" "pushable_inst.hspeed"
			is_contextual_button_being_used = 1;
			is_player_pushing = 1;
			x = pushable_inst.x - round(pushable_inst.sprite_width / 2) - 5;
			player_pushing_speed = 1;
			pushable_inst.hspeed = player_pushing_speed;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7A0D9F5B
	/// @DnDParent : 043815BC
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36241D5A
		/// @DnDParent : 7A0D9F5B
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7032DF42
/// @DnDBreak : 1

/// @DnDArgument : "expr" "!is_contextual_button_being_used && !contextual_inst.visible && image_xscale == -1 && can_player_move_left"
if(!is_contextual_button_being_used && !contextual_inst.visible && image_xscale == -1 && can_player_move_left)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1682C041
	/// @DnDParent : 7032DF42
	/// @DnDArgument : "code" "pushable_inst = noone;$(13_10)var pushable_found = 0;$(13_10)$(13_10)for (var i = 0; i < instance_number(PushableObj) && !pushable_found; i += 1) {$(13_10)	pushable_inst = instance_find(PushableObj, i);$(13_10)	if (pushable_inst != noone && place_meeting(x - 8, y, pushable_inst) && !place_meeting(x, y, pushable_inst) && !place_meeting(x - 8, y, WallObj) && !pushable_found) {$(13_10)		for (var j = 0; j < instance_number(WallObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(WallObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		for (var j = 0; j < instance_number(BarrierObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(BarrierObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		for (var j = 0; j < instance_number(ClimbableObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(ClimbableObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		for (var j = 0; j < instance_number(PushableObj) && pushable_inst != noone; j += 1) {$(13_10)			blocker_inst = instance_find(PushableObj, j);$(13_10)			if (blocker_inst != noone && blocker_inst.id != pushable_inst.id && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)				pushable_inst = noone;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if (pushable_inst != noone) {$(13_10)			pushable_found = 1;$(13_10)		}$(13_10)	}$(13_10)}"
	pushable_inst = noone;
	var pushable_found = 0;
	
	for (var i = 0; i < instance_number(PushableObj) && !pushable_found; i += 1) {
		pushable_inst = instance_find(PushableObj, i);
		if (pushable_inst != noone && place_meeting(x - 8, y, pushable_inst) && !place_meeting(x, y, pushable_inst) && !place_meeting(x - 8, y, WallObj) && !pushable_found) {
			for (var j = 0; j < instance_number(WallObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(WallObj, j);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			for (var j = 0; j < instance_number(BarrierObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(BarrierObj, j);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			for (var j = 0; j < instance_number(ClimbableObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(ClimbableObj, j);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			for (var j = 0; j < instance_number(PushableObj) && pushable_inst != noone; j += 1) {
				blocker_inst = instance_find(PushableObj, j);
				if (blocker_inst != noone && blocker_inst.id != pushable_inst.id && blocker_inst.visible && (blocker_inst.x - round(blocker_inst.sprite_width / 2) + 1 <= pushable_inst.x + round(pushable_inst.sprite_width / 2)) && (blocker_inst.x + round(blocker_inst.sprite_width / 2) + 1 >= pushable_inst.x - round(pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					pushable_inst = noone;
				}
			}
			
			if (pushable_inst != noone) {
				pushable_found = 1;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7469868E
	/// @DnDParent : 7032DF42
	/// @DnDArgument : "expr" "pushable_found"
	if(pushable_found)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45A86939
		/// @DnDParent : 7469868E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6ED2C110
		/// @DnDParent : 7469868E
		/// @DnDArgument : "expr" "button_contextual"
		if(button_contextual)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 253758BB
			/// @DnDInput : 5
			/// @DnDParent : 6ED2C110
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_2" "pushable_inst.x + round(pushable_inst.sprite_width / 2) + 5"
			/// @DnDArgument : "expr_3" "-1"
			/// @DnDArgument : "expr_4" "player_pushing_speed"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "is_player_pushing"
			/// @DnDArgument : "var_2" "x"
			/// @DnDArgument : "var_3" "player_pushing_speed"
			/// @DnDArgument : "var_4" "pushable_inst.hspeed"
			is_contextual_button_being_used = 1;
			is_player_pushing = 1;
			x = pushable_inst.x + round(pushable_inst.sprite_width / 2) + 5;
			player_pushing_speed = -1;
			pushable_inst.hspeed = player_pushing_speed;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 257D725B
	/// @DnDParent : 7032DF42
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50B74F24
		/// @DnDParent : 257D725B
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4A8573B1
/// @DnDArgument : "expr" "!is_contextual_button_being_used && button_down"
if(!is_contextual_button_being_used && button_down)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 792A297C
	/// @DnDParent : 4A8573B1
	/// @DnDArgument : "expr" "instance_place(x, y + 1, LadderObj)"
	/// @DnDArgument : "var" "climbable_inst"
	climbable_inst = instance_place(x, y + 1, LadderObj);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1E255C5E
	/// @DnDParent : 4A8573B1
	/// @DnDArgument : "expr" "climbable_inst != noone && x < climbable_inst.x + 6 && x > climbable_inst.x - 6 && !place_meeting(x, y, climbable_inst)"
	if(climbable_inst != noone && x < climbable_inst.x + 6 && x > climbable_inst.x - 6 && !place_meeting(x, y, climbable_inst))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A1FE0D8
		/// @DnDParent : 1E255C5E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0A136138
		/// @DnDParent : 1E255C5E
		/// @DnDArgument : "expr" "button_contextual"
		if(button_contextual)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A9FEBC0
			/// @DnDInput : 4
			/// @DnDParent : 0A136138
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_2" "climbable_inst.x"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "is_player_climbing"
			/// @DnDArgument : "var_2" "x"
			/// @DnDArgument : "var_3" "player_climbing_speed"
			is_contextual_button_being_used = 1;
			is_player_climbing = 1;
			x = climbable_inst.x;
			player_climbing_speed = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 67DCE425
	/// @DnDParent : 4A8573B1
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B15EB5D
		/// @DnDParent : 67DCE425
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3AA2CF0E
/// @DnDArgument : "expr" "!is_contextual_button_being_used && button_up"
if(!is_contextual_button_being_used && button_up)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48A36869
	/// @DnDParent : 3AA2CF0E
	/// @DnDArgument : "expr" "instance_place(x, y, LadderObj)"
	/// @DnDArgument : "var" "climbable_inst"
	climbable_inst = instance_place(x, y, LadderObj);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5E2B6CD9
	/// @DnDParent : 3AA2CF0E
	/// @DnDArgument : "expr" "climbable_inst != noone && x < climbable_inst.x + 6 && x > climbable_inst.x - 6"
	if(climbable_inst != noone && x < climbable_inst.x + 6 && x > climbable_inst.x - 6)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11366F21
		/// @DnDParent : 5E2B6CD9
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7A2D1FB9
		/// @DnDParent : 5E2B6CD9
		/// @DnDArgument : "expr" "button_contextual"
		if(button_contextual)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7D364F62
			/// @DnDInput : 4
			/// @DnDParent : 7A2D1FB9
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_2" "climbable_inst.x"
			/// @DnDArgument : "expr_3" "-1"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "is_player_climbing"
			/// @DnDArgument : "var_2" "x"
			/// @DnDArgument : "var_3" "player_climbing_speed"
			is_contextual_button_being_used = 1;
			is_player_climbing = 1;
			x = climbable_inst.x;
			player_climbing_speed = -1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4E53E7BA
	/// @DnDParent : 3AA2CF0E
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3069B46A
		/// @DnDParent : 4E53E7BA
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7A6DB994
/// @DnDArgument : "expr" "!is_contextual_button_being_used && climbable_inst == noone && button_down"
if(!is_contextual_button_being_used && climbable_inst == noone && button_down)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 359D692E
	/// @DnDParent : 7A6DB994
	/// @DnDArgument : "var" "can_climb_downwards"
	can_climb_downwards = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7E6D1C1D
	/// @DnDBreak : 1

	/// @DnDParent : 7A6DB994
	/// @DnDArgument : "code" "for (var i = 0; i < instance_number(ClimbableObj) && !can_climb_downwards; i += 1) {$(13_10)	climbable_inst = instance_find(ClimbableObj, i);$(13_10)	if (place_meeting(x, y + 1, climbable_inst) && !place_meeting(x, y, climbable_inst) && y < climbable_inst.y) {$(13_10)		can_climb_downwards = 1;$(13_10)	}$(13_10)}"
	for (var i = 0; i < instance_number(ClimbableObj) && !can_climb_downwards; i += 1) {
		climbable_inst = instance_find(ClimbableObj, i);
		if (place_meeting(x, y + 1, climbable_inst) && !place_meeting(x, y, climbable_inst) && y < climbable_inst.y) {
			can_climb_downwards = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2BB1FB5C
	/// @DnDParent : 7A6DB994
	/// @DnDArgument : "expr" "can_climb_downwards"
	if(can_climb_downwards)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04E75364
		/// @DnDParent : 2BB1FB5C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1BC2A22D
		/// @DnDParent : 2BB1FB5C
		/// @DnDArgument : "expr" "button_contextual"
		if(button_contextual)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6AAFEE51
			/// @DnDInput : 3
			/// @DnDParent : 1BC2A22D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "is_player_climbing"
			/// @DnDArgument : "var_2" "player_climbing_speed"
			is_contextual_button_being_used = 1;
			is_player_climbing = 1;
			player_climbing_speed = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 33F0C36A
	/// @DnDParent : 7A6DB994
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EC561CE
		/// @DnDParent : 33F0C36A
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 71CCD793
/// @DnDArgument : "expr" "!is_contextual_button_being_used && climbable_inst == noone && button_up"
if(!is_contextual_button_being_used && climbable_inst == noone && button_up)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BE20D71
	/// @DnDParent : 71CCD793
	/// @DnDArgument : "expr" "instance_place(x, y, ClimbableObj)"
	/// @DnDArgument : "var" "climbable_inst"
	climbable_inst = instance_place(x, y, ClimbableObj);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1104BE6F
	/// @DnDParent : 71CCD793
	/// @DnDArgument : "expr" "climbable_inst != noone && x < climbable_inst.x + (climbable_inst.sprite_width / 2) - 4 && x > climbable_inst.x - (climbable_inst.sprite_width / 2) + 4"
	if(climbable_inst != noone && x < climbable_inst.x + (climbable_inst.sprite_width / 2) - 4 && x > climbable_inst.x - (climbable_inst.sprite_width / 2) + 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 592F007B
		/// @DnDParent : 1104BE6F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 36E3E36D
		/// @DnDParent : 1104BE6F
		/// @DnDArgument : "expr" "button_contextual"
		if(button_contextual)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 576E1618
			/// @DnDInput : 3
			/// @DnDParent : 36E3E36D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_2" "-1"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "is_player_climbing"
			/// @DnDArgument : "var_2" "player_climbing_speed"
			is_contextual_button_being_used = 1;
			is_player_climbing = 1;
			player_climbing_speed = -1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 38845150
	/// @DnDParent : 71CCD793
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01A6DA9B
		/// @DnDParent : 38845150
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 057CEDCB
/// @DnDArgument : "expr" "!is_contextual_button_being_used && button_down"
if(!is_contextual_button_being_used && button_down)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6D5B2890
	/// @DnDParent : 057CEDCB
	/// @DnDArgument : "expr" "can_player_drop && !place_meeting(x, y + 1, FloorObj)"
	if(can_player_drop && !place_meeting(x, y + 1, FloorObj))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D218B77
		/// @DnDParent : 6D5B2890
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2ABF530A
		/// @DnDParent : 6D5B2890
		/// @DnDArgument : "expr" "button_contextual"
		if(button_contextual)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5A2AB668
			/// @DnDInput : 4
			/// @DnDParent : 2ABF530A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "y + 1"
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			/// @DnDArgument : "var_1" "y"
			/// @DnDArgument : "var_2" "is_player_falling"
			/// @DnDArgument : "var_3" "can_player_drop"
			is_contextual_button_being_used = 1;
			y = y + 1;
			is_player_falling = 1;
			can_player_drop = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1BB289F2
	/// @DnDParent : 057CEDCB
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BF1F9D4
		/// @DnDParent : 1BB289F2
		/// @DnDArgument : "var" "contextual_inst.visible"
		contextual_inst.visible = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5A5758E4
/// @DnDArgument : "expr" "is_contextual_button_being_used"
if(is_contextual_button_being_used)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 100CA02A
	/// @DnDParent : 5A5758E4
	/// @DnDArgument : "var" "contextual_inst.visible"
	contextual_inst.visible = 0;
}