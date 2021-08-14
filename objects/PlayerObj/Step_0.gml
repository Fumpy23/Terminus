/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 142B1965
/// @DnDArgument : "expr" "keyboard_check_pressed(ord("2"))"
if(keyboard_check_pressed(ord("2")))
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6663FE39
	/// @DnDParent : 142B1965
	/// @DnDArgument : "room" "DebugRoom2"
	/// @DnDSaveInfo : "room" "DebugRoom2"
	room_goto(DebugRoom2);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4F3F6F41
/// @DnDArgument : "expr" "keyboard_check_pressed(ord("1"))"
if(keyboard_check_pressed(ord("1")))
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5C52C695
	/// @DnDParent : 4F3F6F41
	/// @DnDArgument : "room" "DebugRoom1"
	/// @DnDSaveInfo : "room" "DebugRoom1"
	room_goto(DebugRoom1);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33E9DE04
/// @DnDBreak : 1

/// @DnDArgument : "code" "can_player_move_left = false;$(13_10)can_player_move_right = false;$(13_10)walkable_inst = noone;$(13_10)$(13_10)walkable_inst = instance_place(x + sprite_width, y + 1, FloorObj);$(13_10)if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {$(13_10)	can_player_move_left = true;$(13_10)	can_player_move_right = true;$(13_10)}$(13_10)$(13_10)walkable_inst = instance_place(x + sprite_width, y + 1, FloorDropObj);$(13_10)if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {$(13_10)	can_player_move_left = true;$(13_10)	can_player_move_right = true;$(13_10)}$(13_10)$(13_10)walkable_inst = instance_place(x + sprite_width, y + 1, LadderObj);$(13_10)if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {$(13_10)	can_player_move_left = true;$(13_10)	can_player_move_right = true;$(13_10)}$(13_10)$(13_10)for (var i = 0; i < instance_number(ClimbableObj); i += 1) {$(13_10)	walkable_inst = instance_find(ClimbableObj, i);$(13_10)	if (place_meeting(x + sprite_width, y + 1, walkable_inst) && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {$(13_10)		can_player_move_left = true;$(13_10)		can_player_move_right = true;$(13_10)	}$(13_10)}$(13_10)$(13_10)/*walkable_inst = instance_place(x + sprite_width, y + 1, PushableObj);$(13_10)if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {$(13_10)	can_player_move_left = true;$(13_10)	can_player_move_right = true;$(13_10)}*/$(13_10)$(13_10)can_player_move_left = can_player_move_left && !place_meeting(x - 2, y, WallObj);$(13_10)can_player_move_right = can_player_move_right && !place_meeting(x + 2, y, WallObj);"
can_player_move_left = false;
can_player_move_right = false;
walkable_inst = noone;

walkable_inst = instance_place(x + sprite_width, y + 1, FloorObj);
if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {
	can_player_move_left = true;
	can_player_move_right = true;
}

walkable_inst = instance_place(x + sprite_width, y + 1, FloorDropObj);
if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {
	can_player_move_left = true;
	can_player_move_right = true;
}

walkable_inst = instance_place(x + sprite_width, y + 1, LadderObj);
if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {
	can_player_move_left = true;
	can_player_move_right = true;
}

for (var i = 0; i < instance_number(ClimbableObj); i += 1) {
	walkable_inst = instance_find(ClimbableObj, i);
	if (place_meeting(x + sprite_width, y + 1, walkable_inst) && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {
		can_player_move_left = true;
		can_player_move_right = true;
	}
}

/*walkable_inst = instance_place(x + sprite_width, y + 1, PushableObj);
if (walkable_inst != noone && (y == walkable_inst.y - walkable_inst.sprite_height) && !place_meeting(x, y, walkable_inst)) {
	can_player_move_left = true;
	can_player_move_right = true;
}*/

can_player_move_left = can_player_move_left && !place_meeting(x - 2, y, WallObj);
can_player_move_right = can_player_move_right && !place_meeting(x + 2, y, WallObj);/**/

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 308067B2
/// @DnDInput : 12
/// @DnDArgument : "expr" "keyboard_check(ord("A"))"
/// @DnDArgument : "expr_1" "keyboard_check(ord("D"))"
/// @DnDArgument : "expr_2" "(((button_right * can_player_move_right) - (button_left * can_player_move_left)) * run_speed * !is_player_climbing * !is_player_falling * !is_player_pushing) + (is_player_pushing * player_pushing_speed)"
/// @DnDArgument : "expr_3" "blink_time - 1"
/// @DnDArgument : "expr_4" "(is_player_climbing * player_climbing_speed) + (is_player_falling * player_falling_speed)"
/// @DnDArgument : "expr_5" "keyboard_check_pressed(ord("I"))"
/// @DnDArgument : "expr_6" "keyboard_check(ord("S"))"
/// @DnDArgument : "expr_8" "keyboard_check(ord("I"))"
/// @DnDArgument : "expr_9" "keyboard_check(ord("W"))"
/// @DnDArgument : "expr_10" "walking_sound_delay - 1"
/// @DnDArgument : "expr_11" "climbing_sound_delay - 1"
/// @DnDArgument : "var" "button_left"
/// @DnDArgument : "var_1" "button_right"
/// @DnDArgument : "var_2" "hspeed"
/// @DnDArgument : "var_3" "blink_time"
/// @DnDArgument : "var_4" "vspeed"
/// @DnDArgument : "var_5" "button_contextual"
/// @DnDArgument : "var_6" "button_down"
/// @DnDArgument : "var_7" "can_player_drop"
/// @DnDArgument : "var_8" "button_contextual_hold"
/// @DnDArgument : "var_9" "button_up"
/// @DnDArgument : "var_10" "walking_sound_delay"
/// @DnDArgument : "var_11" "climbing_sound_delay"
button_left = keyboard_check(ord("A"));
button_right = keyboard_check(ord("D"));
hspeed = (((button_right * can_player_move_right) - (button_left * can_player_move_left)) * run_speed * !is_player_climbing * !is_player_falling * !is_player_pushing) + (is_player_pushing * player_pushing_speed);
blink_time = blink_time - 1;
vspeed = (is_player_climbing * player_climbing_speed) + (is_player_falling * player_falling_speed);
button_contextual = keyboard_check_pressed(ord("I"));
button_down = keyboard_check(ord("S"));
can_player_drop = 0;
button_contextual_hold = keyboard_check(ord("I"));
button_up = keyboard_check(ord("W"));
walking_sound_delay = walking_sound_delay - 1;
climbing_sound_delay = climbing_sound_delay - 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 63DC3BE8
/// @DnDArgument : "expr" "is_player_climbing"
if(is_player_climbing)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 18CE4954
	/// @DnDParent : 63DC3BE8
	/// @DnDArgument : "expr" "player_climbing_speed > 0"
	if(player_climbing_speed > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1456CD0B
		/// @DnDParent : 18CE4954
		/// @DnDArgument : "expr" "(y <= climbable_inst.y - climbable_inst.sprite_height + 20)"
		if((y <= climbable_inst.y - climbable_inst.sprite_height + 20))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 263314AF
			/// @DnDParent : 1456CD0B
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerClimbStartSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerClimbStartSpr"
			sprite_index = PlayerClimbStartSpr;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 154630DF
		/// @DnDParent : 18CE4954
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 10304196
			/// @DnDParent : 154630DF
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerClimbSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerClimbSpr"
			sprite_index = PlayerClimbSpr;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1F1DE04F
		/// @DnDParent : 18CE4954
		/// @DnDArgument : "expr" "(y == climbable_inst.y - 1)"
		if((y == climbable_inst.y - 1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6DFC285B
			/// @DnDInput : 6
			/// @DnDParent : 1F1DE04F
			/// @DnDArgument : "expr_5" "noone"
			/// @DnDArgument : "var" "contextual_inst.visible"
			/// @DnDArgument : "var_1" "is_contextual_button_being_used"
			/// @DnDArgument : "var_2" "is_player_climbing"
			/// @DnDArgument : "var_3" "can_player_drop"
			/// @DnDArgument : "var_4" "button_down"
			/// @DnDArgument : "var_5" "climbable_inst"
			contextual_inst.visible = 0;
			is_contextual_button_being_used = 0;
			is_player_climbing = 0;
			can_player_drop = 0;
			button_down = 0;
			climbable_inst = noone;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1C57AF69
			/// @DnDParent : 1F1DE04F
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerStandSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerStandSpr"
			sprite_index = PlayerStandSpr;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 32691BF8
	/// @DnDParent : 63DC3BE8
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1719FD3E
		/// @DnDParent : 32691BF8
		/// @DnDArgument : "expr" "(y <= climbable_inst.y - climbable_inst.sprite_height + 20)"
		if((y <= climbable_inst.y - climbable_inst.sprite_height + 20))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1BD47B06
			/// @DnDParent : 1719FD3E
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerClimbEndSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerClimbEndSpr"
			sprite_index = PlayerClimbEndSpr;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2AC126B9
		/// @DnDParent : 32691BF8
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 666B1FD8
			/// @DnDParent : 2AC126B9
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerClimbSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerClimbSpr"
			sprite_index = PlayerClimbSpr;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4BC78989
		/// @DnDParent : 32691BF8
		/// @DnDArgument : "expr" "(y <= climbable_inst.y - climbable_inst.sprite_height + 1)"
		if((y <= climbable_inst.y - climbable_inst.sprite_height + 1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A418A1D
			/// @DnDInput : 6
			/// @DnDParent : 4BC78989
			/// @DnDArgument : "expr_5" "noone"
			/// @DnDArgument : "var" "contextual_inst.visible"
			/// @DnDArgument : "var_1" "is_contextual_button_being_used"
			/// @DnDArgument : "var_2" "is_player_climbing"
			/// @DnDArgument : "var_3" "can_player_drop"
			/// @DnDArgument : "var_4" "button_down"
			/// @DnDArgument : "var_5" "climbable_inst"
			contextual_inst.visible = 0;
			is_contextual_button_being_used = 0;
			is_player_climbing = 0;
			can_player_drop = 0;
			button_down = 0;
			climbable_inst = noone;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 41F65D26
			/// @DnDParent : 4BC78989
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerStandSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerStandSpr"
			sprite_index = PlayerStandSpr;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 33795A4C
	/// @DnDParent : 63DC3BE8
	/// @DnDArgument : "expr" "climbing_sound_delay <= 0"
	if(climbing_sound_delay <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 12461A1C
		/// @DnDParent : 33795A4C
		/// @DnDArgument : "soundid" "PlayerClimbingSound"
		/// @DnDSaveInfo : "soundid" "PlayerClimbingSound"
		audio_play_sound(PlayerClimbingSound, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 389BC319
		/// @DnDParent : 33795A4C
		/// @DnDArgument : "expr" "climbing_sound_delay_max"
		/// @DnDArgument : "var" "climbing_sound_delay"
		climbing_sound_delay = climbing_sound_delay_max;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 526D14F1
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2C5165C7
	/// @DnDParent : 526D14F1
	/// @DnDArgument : "expr" "is_player_falling"
	if(is_player_falling)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 76E2CA41
		/// @DnDParent : 2C5165C7
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "PlayerFallingSpr"
		/// @DnDSaveInfo : "spriteind" "PlayerFallingSpr"
		sprite_index = PlayerFallingSpr;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44FE1F23
		/// @DnDInput : 4
		/// @DnDParent : 2C5165C7
		/// @DnDArgument : "expr" "instance_place(x, y + vspeed + 1, FloorDropObj)"
		/// @DnDArgument : "expr_1" "floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, FloorObj)"
		/// @DnDArgument : "expr_2" "floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, ClimbableObj)"
		/// @DnDArgument : "expr_3" "floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, LadderObj)"
		/// @DnDArgument : "var" "floor_inst"
		/// @DnDArgument : "var_1" "floor_inst"
		/// @DnDArgument : "var_2" "floor_inst"
		/// @DnDArgument : "var_3" "floor_inst"
		floor_inst = instance_place(x, y + vspeed + 1, FloorDropObj);
		floor_inst = floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, FloorObj);
		floor_inst = floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, ClimbableObj);
		floor_inst = floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, LadderObj);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0B949CB6
		/// @DnDParent : 2C5165C7
		/// @DnDArgument : "expr" "floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y"
		if(floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 364E9B42
			/// @DnDInput : 4
			/// @DnDParent : 0B949CB6
			/// @DnDArgument : "expr_2" "floor_inst.y - floor_inst.sprite_height"
			/// @DnDArgument : "expr_3" "noone"
			/// @DnDArgument : "var" "is_player_falling"
			/// @DnDArgument : "var_1" "vspeed"
			/// @DnDArgument : "var_2" "y"
			/// @DnDArgument : "var_3" "floor_inst"
			is_player_falling = 0;
			vspeed = 0;
			y = floor_inst.y - floor_inst.sprite_height;
			floor_inst = noone;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 022E1863
			/// @DnDParent : 0B949CB6
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerStandSpr"
			/// @DnDSaveInfo : "spriteind" "PlayerStandSpr"
			sprite_index = PlayerStandSpr;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6078DFD9
			/// @DnDParent : 0B949CB6
			/// @DnDArgument : "var" "is_contextual_button_being_used"
			is_contextual_button_being_used = 0;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 62728AD8
			/// @DnDParent : 0B949CB6
			/// @DnDArgument : "soundid" "PlayerLandSound"
			/// @DnDSaveInfo : "soundid" "PlayerLandSound"
			audio_play_sound(PlayerLandSound, 0, 0);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 28405F74
	/// @DnDParent : 526D14F1
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 24FB3E65
		/// @DnDParent : 28405F74
		/// @DnDArgument : "expr" "is_player_pushing"
		if(is_player_pushing)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 6E77FD6A
			/// @DnDParent : 24FB3E65
			/// @DnDArgument : "code" "if (!button_contextual_hold) {$(13_10)	is_player_pushing = 0;$(13_10)}$(13_10)$(13_10)for (var i = 0; i < instance_number(WallObj); i += 1) {$(13_10)	blocker_inst = instance_find(WallObj, i);$(13_10)	if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)		is_player_pushing = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)for (var i = 0; i < instance_number(BarrierObj); i += 1) {$(13_10)	blocker_inst = instance_find(BarrierObj, i);$(13_10)	if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)		is_player_pushing = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)for (var i = 0; i < instance_number(ClimbableObj); i += 1) {$(13_10)	blocker_inst = instance_find(ClimbableObj, i);$(13_10)	if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)		is_player_pushing = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)for (var i = 0; i < instance_number(LadderObj); i += 1) {$(13_10)	blocker_inst = instance_find(LadderObj, i);$(13_10)	if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)		is_player_pushing = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)for (var i = 0; i < instance_number(PushableObj); i += 1) {$(13_10)	blocker_inst = instance_find(PushableObj, i);$(13_10)	if (blocker_inst != noone && blocker_inst.id != pushable_inst.id && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {$(13_10)		is_player_pushing = 0;$(13_10)	}$(13_10)}"
			if (!button_contextual_hold) {
				is_player_pushing = 0;
			}
			
			for (var i = 0; i < instance_number(WallObj); i += 1) {
				blocker_inst = instance_find(WallObj, i);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					is_player_pushing = 0;
				}
			}
			
			for (var i = 0; i < instance_number(BarrierObj); i += 1) {
				blocker_inst = instance_find(BarrierObj, i);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					is_player_pushing = 0;
				}
			}
			
			for (var i = 0; i < instance_number(ClimbableObj); i += 1) {
				blocker_inst = instance_find(ClimbableObj, i);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					is_player_pushing = 0;
				}
			}
			
			for (var i = 0; i < instance_number(LadderObj); i += 1) {
				blocker_inst = instance_find(LadderObj, i);
				if (blocker_inst != noone && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					is_player_pushing = 0;
				}
			}
			
			for (var i = 0; i < instance_number(PushableObj); i += 1) {
				blocker_inst = instance_find(PushableObj, i);
				if (blocker_inst != noone && blocker_inst.id != pushable_inst.id && blocker_inst.visible && (blocker_inst.x - (blocker_inst.sprite_width / 2) - hspeed <= pushable_inst.x + (pushable_inst.sprite_width / 2)) && (blocker_inst.x + (blocker_inst.sprite_width / 2) - hspeed >= pushable_inst.x - (pushable_inst.sprite_width / 2)) && (blocker_inst.y - blocker_inst.sprite_height <= pushable_inst.y) && (blocker_inst.y >= pushable_inst.y - pushable_inst.sprite_height)) {
					is_player_pushing = 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 0C14B598
			/// @DnDParent : 24FB3E65
			/// @DnDArgument : "expr" "!is_player_pushing"
			if(!is_player_pushing)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 169BC0A1
				/// @DnDInput : 5
				/// @DnDParent : 0C14B598
				/// @DnDArgument : "expr_1" "x - (hspeed * 4)"
				/// @DnDArgument : "expr_3" "noone"
				/// @DnDArgument : "var" "is_player_pushing"
				/// @DnDArgument : "var_1" "x"
				/// @DnDArgument : "var_2" "pushable_inst.hspeed"
				/// @DnDArgument : "var_3" "pushable_inst"
				/// @DnDArgument : "var_4" "hspeed"
				is_player_pushing = 0;
				x = x - (hspeed * 4);
				pushable_inst.hspeed = 0;
				pushable_inst = noone;
				hspeed = 0;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 3EA60C5F
				/// @DnDParent : 0C14B598
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerStandSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerStandSpr"
				sprite_index = PlayerStandSpr;
				image_index += 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0723AC92
				/// @DnDParent : 0C14B598
				/// @DnDArgument : "var" "is_contextual_button_being_used"
				is_contextual_button_being_used = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1099EFC5
			/// @DnDParent : 24FB3E65
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 20288FF4
				/// @DnDParent : 1099EFC5
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerPushSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerPushSpr"
				sprite_index = PlayerPushSpr;
				image_index += 0;
			
				/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 4A862FAB
				/// @DnDParent : 1099EFC5
				/// @DnDArgument : "soundid" "PlayerPushingSound"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "PlayerPushingSound"
				var l4A862FAB_0 = PlayerPushingSound;
				if (!audio_is_playing(l4A862FAB_0))
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 371A7EA4
					/// @DnDParent : 4A862FAB
					/// @DnDArgument : "soundid" "PlayerPushingSound"
					/// @DnDSaveInfo : "soundid" "PlayerPushingSound"
					audio_play_sound(PlayerPushingSound, 0, 0);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 17C8EAAE
		/// @DnDParent : 28405F74
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 571C2AA4
			/// @DnDParent : 17C8EAAE
			/// @DnDArgument : "expr" "button_right"
			if(button_right)
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 4247092F
				/// @DnDParent : 571C2AA4
				/// @DnDArgument : "expr" "can_player_move_right && walking_sound_delay <= 0"
				if(can_player_move_right && walking_sound_delay <= 0)
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 3CF2027F
					/// @DnDParent : 4247092F
					/// @DnDArgument : "soundid" "PlayerWalkingSound"
					/// @DnDSaveInfo : "soundid" "PlayerWalkingSound"
					audio_play_sound(PlayerWalkingSound, 0, 0);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5E16E101
					/// @DnDParent : 4247092F
					/// @DnDArgument : "expr" "walking_sound_delay_max"
					/// @DnDArgument : "var" "walking_sound_delay"
					walking_sound_delay = walking_sound_delay_max;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 515C0197
				/// @DnDParent : 571C2AA4
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "image_xscale"
				image_xscale = 1;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2AF5E8EC
				/// @DnDParent : 571C2AA4
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerRunSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerRunSpr"
				sprite_index = PlayerRunSpr;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 0BC51781
			/// @DnDParent : 17C8EAAE
			/// @DnDArgument : "expr" "button_left"
			if(button_left)
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 4FA3CF68
				/// @DnDParent : 0BC51781
				/// @DnDArgument : "expr" "can_player_move_left && walking_sound_delay <= 0"
				if(can_player_move_left && walking_sound_delay <= 0)
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 63206D09
					/// @DnDParent : 4FA3CF68
					/// @DnDArgument : "soundid" "PlayerWalkingSound"
					/// @DnDSaveInfo : "soundid" "PlayerWalkingSound"
					audio_play_sound(PlayerWalkingSound, 0, 0);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 63A2DB06
					/// @DnDParent : 4FA3CF68
					/// @DnDArgument : "expr" "walking_sound_delay_max"
					/// @DnDArgument : "var" "walking_sound_delay"
					walking_sound_delay = walking_sound_delay_max;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 440E387F
				/// @DnDParent : 0BC51781
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "image_xscale"
				image_xscale = -1;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 64D1D2AB
				/// @DnDParent : 0BC51781
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerRunSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerRunSpr"
				sprite_index = PlayerRunSpr;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 75440647
			/// @DnDParent : 17C8EAAE
			/// @DnDArgument : "expr" "hspeed == 0"
			if(hspeed == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 0F1FAAF2
				/// @DnDParent : 75440647
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "PlayerStandSpr"
				/// @DnDSaveInfo : "spriteind" "PlayerStandSpr"
				sprite_index = PlayerStandSpr;
				image_index += 0;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 0C865449
				/// @DnDParent : 75440647
				/// @DnDArgument : "expr" "blink_time < 5"
				if(blink_time < 5)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 283235EF
					/// @DnDParent : 0C865449
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "PlayerBlinkSpr"
					/// @DnDSaveInfo : "spriteind" "PlayerBlinkSpr"
					sprite_index = PlayerBlinkSpr;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 07051F39
			/// @DnDParent : 17C8EAAE
			/// @DnDArgument : "expr" "blink_time <= 0"
			if(blink_time <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0C8CC7E6
				/// @DnDParent : 07051F39
				/// @DnDArgument : "expr" "blink_time_max"
				/// @DnDArgument : "var" "blink_time"
				blink_time = blink_time_max;
			}
		}
	}
}