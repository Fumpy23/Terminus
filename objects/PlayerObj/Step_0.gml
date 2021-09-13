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
/// @DnDInput : 15
/// @DnDArgument : "expr" "keyboard_check(ord("A"))"
/// @DnDArgument : "expr_1" "keyboard_check(ord("D"))"
/// @DnDArgument : "expr_2" "(((button_right * can_player_move_right) - (button_left * can_player_move_left)) * run_speed * !is_player_climbing * !is_player_falling * !is_player_pushing) + (is_player_pushing * player_pushing_speed)"
/// @DnDArgument : "expr_3" "blink_time - 1"
/// @DnDArgument : "expr_4" "(is_player_climbing * player_climbing_speed) + (is_player_falling * player_falling_speed)"
/// @DnDArgument : "expr_5" "keyboard_check_pressed(ord("J"))"
/// @DnDArgument : "expr_6" "keyboard_check(ord("S"))"
/// @DnDArgument : "expr_8" "keyboard_check(ord("J"))"
/// @DnDArgument : "expr_9" "keyboard_check(ord("W"))"
/// @DnDArgument : "expr_10" "walking_sound_delay - 1"
/// @DnDArgument : "expr_11" "climbing_sound_delay - 1"
/// @DnDArgument : "expr_12" "keyboard_check(ord("I"))"
/// @DnDArgument : "expr_13" "keyboard_check_pressed(ord("O"))"
/// @DnDArgument : "expr_14" "keyboard_check_pressed(ord("U")) && !is_player_using_item"
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
/// @DnDArgument : "var_12" "button_ready_attack"
/// @DnDArgument : "var_13" "button_reload"
/// @DnDArgument : "var_14" "has_player_started_item"
button_left = keyboard_check(ord("A"));
button_right = keyboard_check(ord("D"));
hspeed = (((button_right * can_player_move_right) - (button_left * can_player_move_left)) * run_speed * !is_player_climbing * !is_player_falling * !is_player_pushing) + (is_player_pushing * player_pushing_speed);
blink_time = blink_time - 1;
vspeed = (is_player_climbing * player_climbing_speed) + (is_player_falling * player_falling_speed);
button_contextual = keyboard_check_pressed(ord("J"));
button_down = keyboard_check(ord("S"));
can_player_drop = 0;
button_contextual_hold = keyboard_check(ord("J"));
button_up = keyboard_check(ord("W"));
walking_sound_delay = walking_sound_delay - 1;
climbing_sound_delay = climbing_sound_delay - 1;
button_ready_attack = keyboard_check(ord("I"));
button_reload = keyboard_check_pressed(ord("O"));
has_player_started_item = keyboard_check_pressed(ord("U")) && !is_player_using_item;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 42508797
/// @DnDArgument : "expr" "sprite_index != PlayerRunSpr"
if(sprite_index != PlayerRunSpr)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EE11184
	/// @DnDInput : 2
	/// @DnDParent : 42508797
	/// @DnDArgument : "expr" "hspeed_reduce_delay_max"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "hspeed_reduce_delay"
	/// @DnDArgument : "var_1" "run_speed"
	hspeed_reduce_delay = hspeed_reduce_delay_max;
	run_speed = 1;
}

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
			/// @DnDInput : 7
			/// @DnDParent : 1F1DE04F
			/// @DnDArgument : "expr_5" "noone"
			/// @DnDArgument : "expr_6" "button_left ? -1 : (button_right ? 1 : image_xscale)"
			/// @DnDArgument : "var" "contextual_inst.visible"
			/// @DnDArgument : "var_1" "is_contextual_button_being_used"
			/// @DnDArgument : "var_2" "is_player_climbing"
			/// @DnDArgument : "var_3" "can_player_drop"
			/// @DnDArgument : "var_4" "button_down"
			/// @DnDArgument : "var_5" "climbable_inst"
			/// @DnDArgument : "var_6" "image_xscale"
			contextual_inst.visible = 0;
			is_contextual_button_being_used = 0;
			is_player_climbing = 0;
			can_player_drop = 0;
			button_down = 0;
			climbable_inst = noone;
			image_xscale = button_left ? -1 : (button_right ? 1 : image_xscale);
		
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
			/// @DnDInput : 7
			/// @DnDParent : 4BC78989
			/// @DnDArgument : "expr_5" "noone"
			/// @DnDArgument : "expr_6" "button_left ? -1 : (button_right ? 1 : image_xscale)"
			/// @DnDArgument : "var" "contextual_inst.visible"
			/// @DnDArgument : "var_1" "is_contextual_button_being_used"
			/// @DnDArgument : "var_2" "is_player_climbing"
			/// @DnDArgument : "var_3" "can_player_drop"
			/// @DnDArgument : "var_4" "button_down"
			/// @DnDArgument : "var_5" "climbable_inst"
			/// @DnDArgument : "var_6" "image_xscale"
			contextual_inst.visible = 0;
			is_contextual_button_being_used = 0;
			is_player_climbing = 0;
			can_player_drop = 0;
			button_down = 0;
			climbable_inst = noone;
			image_xscale = button_left ? -1 : (button_right ? 1 : image_xscale);
		
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
		/// @DnDInput : 5
		/// @DnDParent : 2C5165C7
		/// @DnDArgument : "expr" "instance_place(x, y + vspeed + 1, FloorDropObj)"
		/// @DnDArgument : "expr_1" "floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, FloorObj)"
		/// @DnDArgument : "expr_2" "floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, ClimbableObj)"
		/// @DnDArgument : "expr_3" "floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, LadderObj)"
		/// @DnDArgument : "expr_4" "vspeed_reduce_delay - 1"
		/// @DnDArgument : "var" "floor_inst"
		/// @DnDArgument : "var_1" "floor_inst"
		/// @DnDArgument : "var_2" "floor_inst"
		/// @DnDArgument : "var_3" "floor_inst"
		/// @DnDArgument : "var_4" "vspeed_reduce_delay"
		floor_inst = instance_place(x, y + vspeed + 1, FloorDropObj);
		floor_inst = floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, FloorObj);
		floor_inst = floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, ClimbableObj);
		floor_inst = floor_inst != noone && y + floor_inst.sprite_height < floor_inst.y ? floor_inst : instance_place(x, y + vspeed + 1, LadderObj);
		vspeed_reduce_delay = vspeed_reduce_delay - 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 57BE0B3D
		/// @DnDParent : 2C5165C7
		/// @DnDArgument : "expr" "vspeed_reduce_delay == 0"
		if(vspeed_reduce_delay == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 167482AD
			/// @DnDParent : 57BE0B3D
			/// @DnDArgument : "expr" "vspeed_reduce_delay_max"
			/// @DnDArgument : "var" "vspeed_reduce_delay"
			vspeed_reduce_delay = vspeed_reduce_delay_max;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 40CFE9E5
			/// @DnDParent : 57BE0B3D
			/// @DnDArgument : "expr" "vspeed != 4"
			if(vspeed != 4)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7D3551FF
				/// @DnDParent : 40CFE9E5
				/// @DnDArgument : "expr" "player_falling_speed + 1"
				/// @DnDArgument : "var" "player_falling_speed"
				player_falling_speed = player_falling_speed + 1;
			}
		}
	
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
			/// @DnDInput : 7
			/// @DnDParent : 0B949CB6
			/// @DnDArgument : "expr_2" "floor_inst.y - floor_inst.sprite_height"
			/// @DnDArgument : "expr_3" "noone"
			/// @DnDArgument : "expr_4" "button_left ? -1 : (button_right ? 1 : image_xscale)"
			/// @DnDArgument : "expr_5" "1"
			/// @DnDArgument : "expr_6" "vspeed_reduce_delay_max"
			/// @DnDArgument : "var" "is_player_falling"
			/// @DnDArgument : "var_1" "vspeed"
			/// @DnDArgument : "var_2" "y"
			/// @DnDArgument : "var_3" "floor_inst"
			/// @DnDArgument : "var_4" "image_xscale"
			/// @DnDArgument : "var_5" "player_falling_speed"
			/// @DnDArgument : "var_6" "vspeed_reduce_delay"
			is_player_falling = 0;
			vspeed = 0;
			y = floor_inst.y - floor_inst.sprite_height;
			floor_inst = noone;
			image_xscale = button_left ? -1 : (button_right ? 1 : image_xscale);
			player_falling_speed = 1;
			vspeed_reduce_delay = vspeed_reduce_delay_max;
		
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
				/// @DnDInput : 6
				/// @DnDParent : 0C14B598
				/// @DnDArgument : "expr_1" "x - (hspeed * 4)"
				/// @DnDArgument : "expr_3" "noone"
				/// @DnDArgument : "expr_5" "button_left ? -1 : (button_right ? 1 : image_xscale)"
				/// @DnDArgument : "var" "is_player_pushing"
				/// @DnDArgument : "var_1" "x"
				/// @DnDArgument : "var_2" "pushable_inst.hspeed"
				/// @DnDArgument : "var_3" "pushable_inst"
				/// @DnDArgument : "var_4" "hspeed"
				/// @DnDArgument : "var_5" "image_xscale"
				is_player_pushing = 0;
				x = x - (hspeed * 4);
				pushable_inst.hspeed = 0;
				pushable_inst = noone;
				hspeed = 0;
				image_xscale = button_left ? -1 : (button_right ? 1 : image_xscale);
			
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
			/// @DnDHash : 4F326A45
			/// @DnDParent : 17C8EAAE
			/// @DnDArgument : "expr" "is_player_attacking || is_player_reloading"
			if(is_player_attacking || is_player_reloading)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 717B926D
				/// @DnDParent : 4F326A45
				/// @DnDArgument : "var" "hspeed"
				hspeed = 0;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 6510CBED
				/// @DnDParent : 4F326A45
				/// @DnDArgument : "expr" "is_player_reloading && image_index == 3"
				if(is_player_reloading && image_index == 3)
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 2117FBB0
					/// @DnDParent : 6510CBED
					/// @DnDArgument : "soundid" "PlayerPistolReload1Sound"
					/// @DnDSaveInfo : "soundid" "PlayerPistolReload1Sound"
					audio_play_sound(PlayerPistolReload1Sound, 0, 0);
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 3C73E8B2
				/// @DnDParent : 4F326A45
				/// @DnDArgument : "expr" "is_player_reloading && image_index == 16"
				if(is_player_reloading && image_index == 16)
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 4A51F46F
					/// @DnDParent : 3C73E8B2
					/// @DnDArgument : "soundid" "PlayerPistolReload2Sound"
					/// @DnDSaveInfo : "soundid" "PlayerPistolReload2Sound"
					audio_play_sound(PlayerPistolReload2Sound, 0, 0);
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 02FDD84F
				/// @DnDParent : 4F326A45
				/// @DnDArgument : "expr" "player_weapon_using == "Hatchet" && image_index >= image_number - 4"
				if(player_weapon_using == "Hatchet" && image_index >= image_number - 4)
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 0B690107
					/// @DnDParent : 02FDD84F
					/// @DnDArgument : "soundid" "PlayerHatchetSwingSound"
					/// @DnDSaveInfo : "soundid" "PlayerHatchetSwingSound"
					audio_play_sound(PlayerHatchetSwingSound, 0, 0);
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 70152A65
				/// @DnDParent : 4F326A45
				/// @DnDArgument : "expr" "image_index >= image_number - 1"
				if(image_index >= image_number - 1)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2D9D7F2B
					/// @DnDInput : 2
					/// @DnDParent : 70152A65
					/// @DnDArgument : "var" "is_player_attacking"
					/// @DnDArgument : "var_1" "is_player_reloading"
					is_player_attacking = 0;
					is_player_reloading = 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 2DAEB3C7
			/// @DnDParent : 17C8EAAE
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 2EA9182A
				/// @DnDParent : 2DAEB3C7
				/// @DnDArgument : "expr" "(button_ready_attack || is_weapon_being_raised) && can_player_ready_attack"
				if((button_ready_attack || is_weapon_being_raised) && can_player_ready_attack)
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 05EED178
					/// @DnDParent : 2EA9182A
					/// @DnDArgument : "expr" "!is_player_finishing_attack"
					if(!is_player_finishing_attack)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4EB93E4A
						/// @DnDParent : 05EED178
						/// @DnDArgument : "var" "image_index"
						image_index = 0;
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1
						/// @DnDHash : 471D0142
						/// @DnDParent : 05EED178
						/// @DnDArgument : "soundid" "PlayerPistolRaiseSound"
						/// @DnDSaveInfo : "soundid" "PlayerPistolRaiseSound"
						audio_play_sound(PlayerPistolRaiseSound, 0, 0);
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 422C83FD
					/// @DnDInput : 2
					/// @DnDParent : 2EA9182A
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "is_player_finishing_attack"
					/// @DnDArgument : "var_1" "hspeed"
					is_player_finishing_attack = 1;
					hspeed = 0;
				
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 30E148A4
					/// @DnDParent : 2EA9182A
					/// @DnDArgument : "expr" "is_player_readying_attack"
					if(is_player_readying_attack)
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 192B3D22
						/// @DnDParent : 30E148A4
						/// @DnDArgument : "expr" "player_weapon_using == "Pistol""
						if(player_weapon_using == "Pistol")
						{
							/// @DnDAction : YoYo Games.Instances.Set_Sprite
							/// @DnDVersion : 1
							/// @DnDHash : 7B54667A
							/// @DnDParent : 192B3D22
							/// @DnDArgument : "imageind_relative" "1"
							/// @DnDArgument : "spriteind" "PlayerShootReadySpr"
							/// @DnDSaveInfo : "spriteind" "PlayerShootReadySpr"
							sprite_index = PlayerShootReadySpr;
							image_index += 0;
						}
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 76CCB1CA
						/// @DnDParent : 30E148A4
						/// @DnDArgument : "expr" "player_weapon_using == "Hatchet""
						if(player_weapon_using == "Hatchet")
						{
							/// @DnDAction : YoYo Games.Instances.Set_Sprite
							/// @DnDVersion : 1
							/// @DnDHash : 69C57084
							/// @DnDParent : 76CCB1CA
							/// @DnDArgument : "imageind_relative" "1"
							/// @DnDArgument : "spriteind" "PlayerHatchetReadySpr"
							/// @DnDSaveInfo : "spriteind" "PlayerHatchetReadySpr"
							sprite_index = PlayerHatchetReadySpr;
							image_index += 0;
						}
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 11100EF4
						/// @DnDParent : 30E148A4
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "is_weapon_being_raised"
						is_weapon_being_raised = 1;
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 5815BFF5
						/// @DnDParent : 30E148A4
						/// @DnDArgument : "expr" "image_index >= image_number - 1"
						if(image_index >= image_number - 1)
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 26C6C383
							/// @DnDInput : 3
							/// @DnDParent : 5815BFF5
							/// @DnDArgument : "expr_2" "1"
							/// @DnDArgument : "var" "is_player_readying_attack"
							/// @DnDArgument : "var_1" "is_weapon_being_raised"
							/// @DnDArgument : "var_2" "is_weapon_being_lowered"
							is_player_readying_attack = 0;
							is_weapon_being_raised = 0;
							is_weapon_being_lowered = 1;
						}
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 73A9D370
					/// @DnDParent : 2EA9182A
					else
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 00EC1139
						/// @DnDParent : 73A9D370
						/// @DnDArgument : "expr" "!is_player_attacking && !is_player_reloading && can_player_reload && button_reload"
						if(!is_player_attacking && !is_player_reloading && can_player_reload && button_reload)
						{
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 4AF04768
							/// @DnDParent : 00EC1139
							/// @DnDArgument : "expr" "player_weapon_using == "Pistol""
							if(player_weapon_using == "Pistol")
							{
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 090E0049
								/// @DnDParent : 4AF04768
								/// @DnDArgument : "expr" "1"
								/// @DnDArgument : "var" "is_player_reloading"
								is_player_reloading = 1;
							
								/// @DnDAction : YoYo Games.Instances.Set_Sprite
								/// @DnDVersion : 1
								/// @DnDHash : 16D835AF
								/// @DnDParent : 4AF04768
								/// @DnDArgument : "spriteind" "PlayerReloadSpr"
								/// @DnDSaveInfo : "spriteind" "PlayerReloadSpr"
								sprite_index = PlayerReloadSpr;
								image_index = 0;
							}
						}
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 29693CF9
						/// @DnDParent : 73A9D370
						/// @DnDArgument : "expr" "!is_player_reloading"
						if(!is_player_reloading)
						{
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 7FB8F646
							/// @DnDParent : 29693CF9
							/// @DnDArgument : "expr" "player_weapon_using == "Hatchet""
							if(player_weapon_using == "Hatchet")
							{
								/// @DnDAction : YoYo Games.Common.If_Expression
								/// @DnDVersion : 1
								/// @DnDHash : 58CD8F51
								/// @DnDParent : 7FB8F646
								/// @DnDArgument : "expr" "!is_player_attacking"
								if(!is_player_attacking)
								{
									/// @DnDAction : YoYo Games.Instances.Set_Sprite
									/// @DnDVersion : 1
									/// @DnDHash : 4FD62251
									/// @DnDParent : 58CD8F51
									/// @DnDArgument : "spriteind" "PlayerHatchetSwingSpr"
									/// @DnDSaveInfo : "spriteind" "PlayerHatchetSwingSpr"
									sprite_index = PlayerHatchetSwingSpr;
									image_index = 0;
								
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 0FECA306
									/// @DnDParent : 58CD8F51
									/// @DnDArgument : "expr" "can_player_attack && button_contextual"
									if(can_player_attack && button_contextual)
									{
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 30781E05
										/// @DnDParent : 0FECA306
										/// @DnDArgument : "expr" "1"
										/// @DnDArgument : "var" "is_player_attacking"
										is_player_attacking = 1;
									
										/// @DnDAction : YoYo Games.Instances.Create_Instance
										/// @DnDVersion : 1
										/// @DnDHash : 4E954E18
										/// @DnDParent : 0FECA306
										/// @DnDArgument : "xpos" "image_xscale * 15"
										/// @DnDArgument : "xpos_relative" "1"
										/// @DnDArgument : "ypos_relative" "1"
										/// @DnDArgument : "var" "hatchet_col_inst"
										/// @DnDArgument : "objectid" "HatchetColObj"
										/// @DnDArgument : "layer" ""Front""
										/// @DnDSaveInfo : "objectid" "HatchetColObj"
										hatchet_col_inst = instance_create_layer(x + image_xscale * 15, y + 0, "Front", HatchetColObj);
									
										/// @DnDAction : YoYo Games.Audio.Play_Audio
										/// @DnDVersion : 1
										/// @DnDHash : 5BCA98CA
										/// @DnDParent : 0FECA306
										/// @DnDArgument : "soundid" "PlayerPistolLowerSound"
										/// @DnDSaveInfo : "soundid" "PlayerPistolLowerSound"
										audio_play_sound(PlayerPistolLowerSound, 0, 0);
									}
								}
							}
						
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 2C40E62D
							/// @DnDParent : 29693CF9
							/// @DnDArgument : "expr" "player_weapon_using == "Pistol""
							if(player_weapon_using == "Pistol")
							{
								/// @DnDAction : YoYo Games.Common.If_Expression
								/// @DnDVersion : 1
								/// @DnDHash : 0701F087
								/// @DnDParent : 2C40E62D
								/// @DnDArgument : "expr" "button_up"
								if(button_up)
								{
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 26806D00
									/// @DnDParent : 0701F087
									/// @DnDArgument : "expr" "image_xscale == 1 ? button_right : button_left"
									if(image_xscale == 1 ? button_right : button_left)
									{
										/// @DnDAction : YoYo Games.Common.If_Expression
										/// @DnDVersion : 1
										/// @DnDHash : 5630F2BD
										/// @DnDParent : 26806D00
										/// @DnDArgument : "expr" "!is_player_attacking"
										if(!is_player_attacking)
										{
											/// @DnDAction : YoYo Games.Instances.Set_Sprite
											/// @DnDVersion : 1
											/// @DnDHash : 1917F8B7
											/// @DnDParent : 5630F2BD
											/// @DnDArgument : "spriteind" "PlayerShootURSpr"
											/// @DnDSaveInfo : "spriteind" "PlayerShootURSpr"
											sprite_index = PlayerShootURSpr;
											image_index = 0;
										
											/// @DnDAction : YoYo Games.Common.If_Expression
											/// @DnDVersion : 1
											/// @DnDHash : 148CDE72
											/// @DnDParent : 5630F2BD
											/// @DnDArgument : "expr" "can_player_attack && button_contextual"
											if(can_player_attack && button_contextual)
											{
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 0279D0C1
												/// @DnDParent : 148CDE72
												/// @DnDArgument : "expr" "1"
												/// @DnDArgument : "var" "is_player_attacking"
												is_player_attacking = 1;
											
												/// @DnDAction : YoYo Games.Instances.Create_Instance
												/// @DnDVersion : 1
												/// @DnDHash : 0077BC69
												/// @DnDParent : 148CDE72
												/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? 11 : -11)"
												/// @DnDArgument : "ypos" "y - sprite_height + 4"
												/// @DnDArgument : "var" "pistol_bullet_inst"
												/// @DnDArgument : "objectid" "PistolBulletObj"
												/// @DnDArgument : "layer" ""Front""
												/// @DnDSaveInfo : "objectid" "PistolBulletObj"
												pistol_bullet_inst = instance_create_layer(x + (image_xscale == 1 ? 11 : -11), y - sprite_height + 4, "Front", PistolBulletObj);
											
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 75E04264
												/// @DnDInput : 3
												/// @DnDParent : 148CDE72
												/// @DnDArgument : "expr" "image_xscale == 1 ? 30 : 150"
												/// @DnDArgument : "expr_1" "2 * sqrt(3) * image_xscale"
												/// @DnDArgument : "expr_2" "-2"
												/// @DnDArgument : "var" "pistol_bullet_inst.image_angle"
												/// @DnDArgument : "var_1" "pistol_bullet_inst.x_step"
												/// @DnDArgument : "var_2" "pistol_bullet_inst.y_step"
												pistol_bullet_inst.image_angle = image_xscale == 1 ? 30 : 150;
												pistol_bullet_inst.x_step = 2 * sqrt(3) * image_xscale;
												pistol_bullet_inst.y_step = -2;
											
												/// @DnDAction : YoYo Games.Instances.Create_Instance
												/// @DnDVersion : 1
												/// @DnDHash : 5744A7B1
												/// @DnDParent : 148CDE72
												/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? 12 : -12)"
												/// @DnDArgument : "ypos" "y - sprite_height + (image_xscale == 1? 3 : 4)"
												/// @DnDArgument : "var" "pistol_flash_inst"
												/// @DnDArgument : "objectid" "PistolBulletFlashObj"
												/// @DnDArgument : "layer" ""Front""
												/// @DnDSaveInfo : "objectid" "PistolBulletFlashObj"
												pistol_flash_inst = instance_create_layer(x + (image_xscale == 1 ? 12 : -12), y - sprite_height + (image_xscale == 1? 3 : 4), "Front", PistolBulletFlashObj);
											
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 18243E20
												/// @DnDParent : 148CDE72
												/// @DnDArgument : "expr" "image_xscale == 1 ? 30 : 150"
												/// @DnDArgument : "var" "pistol_flash_inst.image_angle"
												pistol_flash_inst.image_angle = image_xscale == 1 ? 30 : 150;
											
												/// @DnDAction : YoYo Games.Audio.Play_Audio
												/// @DnDVersion : 1
												/// @DnDHash : 3CE4844D
												/// @DnDParent : 148CDE72
												/// @DnDArgument : "soundid" "PlayerPistolShootSound"
												/// @DnDSaveInfo : "soundid" "PlayerPistolShootSound"
												audio_play_sound(PlayerPistolShootSound, 0, 0);
											}
										}
									}
								
									/// @DnDAction : YoYo Games.Common.Else
									/// @DnDVersion : 1
									/// @DnDHash : 72EDC14E
									/// @DnDParent : 0701F087
									else
									{
										/// @DnDAction : YoYo Games.Common.If_Expression
										/// @DnDVersion : 1
										/// @DnDHash : 2E4D2E80
										/// @DnDParent : 72EDC14E
										/// @DnDArgument : "expr" "!is_player_attacking"
										if(!is_player_attacking)
										{
											/// @DnDAction : YoYo Games.Instances.Set_Sprite
											/// @DnDVersion : 1
											/// @DnDHash : 240CCC10
											/// @DnDParent : 2E4D2E80
											/// @DnDArgument : "spriteind" "PlayerShootUSpr"
											/// @DnDSaveInfo : "spriteind" "PlayerShootUSpr"
											sprite_index = PlayerShootUSpr;
											image_index = 0;
										
											/// @DnDAction : YoYo Games.Common.If_Expression
											/// @DnDVersion : 1
											/// @DnDHash : 30BD233D
											/// @DnDParent : 2E4D2E80
											/// @DnDArgument : "expr" "can_player_attack && button_contextual"
											if(can_player_attack && button_contextual)
											{
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 14ED4561
												/// @DnDParent : 30BD233D
												/// @DnDArgument : "expr" "1"
												/// @DnDArgument : "var" "is_player_attacking"
												is_player_attacking = 1;
											
												/// @DnDAction : YoYo Games.Instances.Create_Instance
												/// @DnDVersion : 1
												/// @DnDHash : 6F8E58DE
												/// @DnDParent : 30BD233D
												/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? -4 : 3)"
												/// @DnDArgument : "ypos" "y - sprite_height - 1"
												/// @DnDArgument : "var" "pistol_bullet_inst"
												/// @DnDArgument : "objectid" "PistolBulletObj"
												/// @DnDArgument : "layer" ""Front""
												/// @DnDSaveInfo : "objectid" "PistolBulletObj"
												pistol_bullet_inst = instance_create_layer(x + (image_xscale == 1 ? -4 : 3), y - sprite_height - 1, "Front", PistolBulletObj);
											
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 06AD5818
												/// @DnDInput : 3
												/// @DnDParent : 30BD233D
												/// @DnDArgument : "expr" "90"
												/// @DnDArgument : "expr_2" "-4"
												/// @DnDArgument : "var" "pistol_bullet_inst.image_angle"
												/// @DnDArgument : "var_1" "pistol_bullet_inst.x_step"
												/// @DnDArgument : "var_2" "pistol_bullet_inst.y_step"
												pistol_bullet_inst.image_angle = 90;
												pistol_bullet_inst.x_step = 0;
												pistol_bullet_inst.y_step = -4;
											
												/// @DnDAction : YoYo Games.Instances.Create_Instance
												/// @DnDVersion : 1
												/// @DnDHash : 031275BF
												/// @DnDParent : 30BD233D
												/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? -4 : 3)"
												/// @DnDArgument : "ypos" "y - sprite_height - 3"
												/// @DnDArgument : "var" "pistol_flash_inst"
												/// @DnDArgument : "objectid" "PistolBulletFlashObj"
												/// @DnDArgument : "layer" ""Front""
												/// @DnDSaveInfo : "objectid" "PistolBulletFlashObj"
												pistol_flash_inst = instance_create_layer(x + (image_xscale == 1 ? -4 : 3), y - sprite_height - 3, "Front", PistolBulletFlashObj);
											
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 1CA50911
												/// @DnDParent : 30BD233D
												/// @DnDArgument : "expr" "90"
												/// @DnDArgument : "var" "pistol_flash_inst.image_angle"
												pistol_flash_inst.image_angle = 90;
											
												/// @DnDAction : YoYo Games.Audio.Play_Audio
												/// @DnDVersion : 1
												/// @DnDHash : 03D1B042
												/// @DnDParent : 30BD233D
												/// @DnDArgument : "soundid" "PlayerPistolShootSound"
												/// @DnDSaveInfo : "soundid" "PlayerPistolShootSound"
												audio_play_sound(PlayerPistolShootSound, 0, 0);
											}
										}
									}
								}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 128D8D0A
								/// @DnDParent : 2C40E62D
								else
								{
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 1CB5C8D5
									/// @DnDParent : 128D8D0A
									/// @DnDArgument : "expr" "button_down"
									if(button_down)
									{
										/// @DnDAction : YoYo Games.Common.If_Expression
										/// @DnDVersion : 1
										/// @DnDHash : 2940060E
										/// @DnDParent : 1CB5C8D5
										/// @DnDArgument : "expr" "image_xscale == 1 ? button_right : button_left"
										if(image_xscale == 1 ? button_right : button_left)
										{
											/// @DnDAction : YoYo Games.Common.If_Expression
											/// @DnDVersion : 1
											/// @DnDHash : 48CCC7D3
											/// @DnDParent : 2940060E
											/// @DnDArgument : "expr" "!is_player_attacking"
											if(!is_player_attacking)
											{
												/// @DnDAction : YoYo Games.Instances.Set_Sprite
												/// @DnDVersion : 1
												/// @DnDHash : 0DDBD18A
												/// @DnDParent : 48CCC7D3
												/// @DnDArgument : "spriteind" "PlayerShootDRSpr"
												/// @DnDSaveInfo : "spriteind" "PlayerShootDRSpr"
												sprite_index = PlayerShootDRSpr;
												image_index = 0;
											
												/// @DnDAction : YoYo Games.Common.If_Expression
												/// @DnDVersion : 1
												/// @DnDHash : 58EF4434
												/// @DnDParent : 48CCC7D3
												/// @DnDArgument : "expr" "can_player_attack && button_contextual"
												if(can_player_attack && button_contextual)
												{
													/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 2C320F52
													/// @DnDParent : 58EF4434
													/// @DnDArgument : "expr" "1"
													/// @DnDArgument : "var" "is_player_attacking"
													is_player_attacking = 1;
												
													/// @DnDAction : YoYo Games.Instances.Create_Instance
													/// @DnDVersion : 1
													/// @DnDHash : 6C955479
													/// @DnDParent : 58EF4434
													/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? 10 : -12)"
													/// @DnDArgument : "ypos" "y - (image_xscale == 1 ? 10 : 9)"
													/// @DnDArgument : "var" "pistol_bullet_inst"
													/// @DnDArgument : "objectid" "PistolBulletObj"
													/// @DnDArgument : "layer" ""Front""
													/// @DnDSaveInfo : "objectid" "PistolBulletObj"
													pistol_bullet_inst = instance_create_layer(x + (image_xscale == 1 ? 10 : -12), y - (image_xscale == 1 ? 10 : 9), "Front", PistolBulletObj);
												
													/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 52D3E4AE
													/// @DnDInput : 3
													/// @DnDParent : 58EF4434
													/// @DnDArgument : "expr" "image_xscale == 1 ? -30 : -150"
													/// @DnDArgument : "expr_1" "2 * sqrt(3) * image_xscale"
													/// @DnDArgument : "expr_2" "2"
													/// @DnDArgument : "var" "pistol_bullet_inst.image_angle"
													/// @DnDArgument : "var_1" "pistol_bullet_inst.x_step"
													/// @DnDArgument : "var_2" "pistol_bullet_inst.y_step"
													pistol_bullet_inst.image_angle = image_xscale == 1 ? -30 : -150;
													pistol_bullet_inst.x_step = 2 * sqrt(3) * image_xscale;
													pistol_bullet_inst.y_step = 2;
												
													/// @DnDAction : YoYo Games.Instances.Create_Instance
													/// @DnDVersion : 1
													/// @DnDHash : 68374225
													/// @DnDParent : 58EF4434
													/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? 12 : -11)"
													/// @DnDArgument : "ypos" "y - (image_xscale == 1 ? 9 : 8)"
													/// @DnDArgument : "var" "pistol_flash_inst"
													/// @DnDArgument : "objectid" "PistolBulletFlashObj"
													/// @DnDArgument : "layer" ""Front""
													/// @DnDSaveInfo : "objectid" "PistolBulletFlashObj"
													pistol_flash_inst = instance_create_layer(x + (image_xscale == 1 ? 12 : -11), y - (image_xscale == 1 ? 9 : 8), "Front", PistolBulletFlashObj);
												
													/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 1A165F05
													/// @DnDParent : 58EF4434
													/// @DnDArgument : "expr" "image_xscale == 1 ? -30 : -145"
													/// @DnDArgument : "var" "pistol_flash_inst.image_angle"
													pistol_flash_inst.image_angle = image_xscale == 1 ? -30 : -145;
												
													/// @DnDAction : YoYo Games.Audio.Play_Audio
													/// @DnDVersion : 1
													/// @DnDHash : 686F70C9
													/// @DnDParent : 58EF4434
													/// @DnDArgument : "soundid" "PlayerPistolShootSound"
													/// @DnDSaveInfo : "soundid" "PlayerPistolShootSound"
													audio_play_sound(PlayerPistolShootSound, 0, 0);
												}
											}
										}
									
										/// @DnDAction : YoYo Games.Common.Else
										/// @DnDVersion : 1
										/// @DnDHash : 37365B50
										/// @DnDParent : 1CB5C8D5
										else
										{
											/// @DnDAction : YoYo Games.Common.If_Expression
											/// @DnDVersion : 1
											/// @DnDHash : 50D1DC12
											/// @DnDParent : 37365B50
											/// @DnDArgument : "expr" "!is_player_attacking"
											if(!is_player_attacking)
											{
												/// @DnDAction : YoYo Games.Instances.Set_Sprite
												/// @DnDVersion : 1
												/// @DnDHash : 0A49BC28
												/// @DnDParent : 50D1DC12
												/// @DnDArgument : "spriteind" "PlayerShootDSpr"
												/// @DnDSaveInfo : "spriteind" "PlayerShootDSpr"
												sprite_index = PlayerShootDSpr;
												image_index = 0;
											
												/// @DnDAction : YoYo Games.Common.If_Expression
												/// @DnDVersion : 1
												/// @DnDHash : 777A86D4
												/// @DnDParent : 50D1DC12
												/// @DnDArgument : "expr" "can_player_attack && button_contextual"
												if(can_player_attack && button_contextual)
												{
													/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 18D1F2C2
													/// @DnDParent : 777A86D4
													/// @DnDArgument : "expr" "1"
													/// @DnDArgument : "var" "is_player_attacking"
													is_player_attacking = 1;
												
													/// @DnDAction : YoYo Games.Instances.Create_Instance
													/// @DnDVersion : 1
													/// @DnDHash : 2BA27491
													/// @DnDParent : 777A86D4
													/// @DnDArgument : "xpos" "x - (image_xscale == 1 ? 1 : 0)"
													/// @DnDArgument : "ypos" "y + 1"
													/// @DnDArgument : "var" "pistol_bullet_inst"
													/// @DnDArgument : "objectid" "PistolBulletObj"
													/// @DnDArgument : "layer" ""Front""
													/// @DnDSaveInfo : "objectid" "PistolBulletObj"
													pistol_bullet_inst = instance_create_layer(x - (image_xscale == 1 ? 1 : 0), y + 1, "Front", PistolBulletObj);
												
													/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 64A1C917
													/// @DnDInput : 3
													/// @DnDParent : 777A86D4
													/// @DnDArgument : "expr" "-90"
													/// @DnDArgument : "expr_2" "4"
													/// @DnDArgument : "var" "pistol_bullet_inst.image_angle"
													/// @DnDArgument : "var_1" "pistol_bullet_inst.x_step"
													/// @DnDArgument : "var_2" "pistol_bullet_inst.y_step"
													pistol_bullet_inst.image_angle = -90;
													pistol_bullet_inst.x_step = 0;
													pistol_bullet_inst.y_step = 4;
												
													/// @DnDAction : YoYo Games.Instances.Create_Instance
													/// @DnDVersion : 1
													/// @DnDHash : 78B79632
													/// @DnDParent : 777A86D4
													/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? 0 : 1)"
													/// @DnDArgument : "ypos" "y + 3"
													/// @DnDArgument : "var" "pistol_flash_inst"
													/// @DnDArgument : "objectid" "PistolBulletFlashObj"
													/// @DnDArgument : "layer" ""Front""
													/// @DnDSaveInfo : "objectid" "PistolBulletFlashObj"
													pistol_flash_inst = instance_create_layer(x + (image_xscale == 1 ? 0 : 1), y + 3, "Front", PistolBulletFlashObj);
												
													/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 17A496D1
													/// @DnDParent : 777A86D4
													/// @DnDArgument : "expr" "-90"
													/// @DnDArgument : "var" "pistol_flash_inst.image_angle"
													pistol_flash_inst.image_angle = -90;
												
													/// @DnDAction : YoYo Games.Audio.Play_Audio
													/// @DnDVersion : 1
													/// @DnDHash : 69969A0A
													/// @DnDParent : 777A86D4
													/// @DnDArgument : "soundid" "PlayerPistolShootSound"
													/// @DnDSaveInfo : "soundid" "PlayerPistolShootSound"
													audio_play_sound(PlayerPistolShootSound, 0, 0);
												}
											}
										}
									}
								
									/// @DnDAction : YoYo Games.Common.Else
									/// @DnDVersion : 1
									/// @DnDHash : 4139D6A7
									/// @DnDParent : 128D8D0A
									else
									{
										/// @DnDAction : YoYo Games.Common.If_Expression
										/// @DnDVersion : 1
										/// @DnDHash : 0EEAA9F5
										/// @DnDParent : 4139D6A7
										/// @DnDArgument : "expr" "!is_player_attacking"
										if(!is_player_attacking)
										{
											/// @DnDAction : YoYo Games.Instances.Set_Sprite
											/// @DnDVersion : 1
											/// @DnDHash : 4ADCF447
											/// @DnDParent : 0EEAA9F5
											/// @DnDArgument : "spriteind" "PlayerShootRSpr"
											/// @DnDSaveInfo : "spriteind" "PlayerShootRSpr"
											sprite_index = PlayerShootRSpr;
											image_index = 0;
										
											/// @DnDAction : YoYo Games.Common.If_Expression
											/// @DnDVersion : 1
											/// @DnDHash : 10940620
											/// @DnDParent : 0EEAA9F5
											/// @DnDArgument : "expr" "can_player_attack && button_contextual"
											if(can_player_attack && button_contextual)
											{
												/// @DnDAction : YoYo Games.Audio.Play_Audio
												/// @DnDVersion : 1
												/// @DnDHash : 7EF3EDB2
												/// @DnDParent : 10940620
												/// @DnDArgument : "soundid" "PlayerPistolShootSound"
												/// @DnDSaveInfo : "soundid" "PlayerPistolShootSound"
												audio_play_sound(PlayerPistolShootSound, 0, 0);
											
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 363A54FD
												/// @DnDParent : 10940620
												/// @DnDArgument : "expr" "1"
												/// @DnDArgument : "var" "is_player_attacking"
												is_player_attacking = 1;
											
												/// @DnDAction : YoYo Games.Instances.Create_Instance
												/// @DnDVersion : 1
												/// @DnDHash : 6AA249D2
												/// @DnDParent : 10940620
												/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? 12 : -12)"
												/// @DnDArgument : "ypos" "y - sprite_height + (image_xscale == 1 ? 8 : 8)"
												/// @DnDArgument : "var" "pistol_bullet_inst"
												/// @DnDArgument : "objectid" "PistolBulletObj"
												/// @DnDArgument : "layer" ""Front""
												/// @DnDSaveInfo : "objectid" "PistolBulletObj"
												pistol_bullet_inst = instance_create_layer(x + (image_xscale == 1 ? 12 : -12), y - sprite_height + (image_xscale == 1 ? 8 : 8), "Front", PistolBulletObj);
											
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 0E582A9C
												/// @DnDInput : 3
												/// @DnDParent : 10940620
												/// @DnDArgument : "expr" "image_xscale == 1 ? 0 : 180"
												/// @DnDArgument : "expr_1" "4 * image_xscale"
												/// @DnDArgument : "var" "pistol_bullet_inst.image_angle"
												/// @DnDArgument : "var_1" "pistol_bullet_inst.x_step"
												/// @DnDArgument : "var_2" "pistol_bullet_inst.y_step"
												pistol_bullet_inst.image_angle = image_xscale == 1 ? 0 : 180;
												pistol_bullet_inst.x_step = 4 * image_xscale;
												pistol_bullet_inst.y_step = 0;
											
												/// @DnDAction : YoYo Games.Instances.Create_Instance
												/// @DnDVersion : 1
												/// @DnDHash : 60C30D77
												/// @DnDParent : 10940620
												/// @DnDArgument : "xpos" "x + (image_xscale == 1 ? 14 : -14)"
												/// @DnDArgument : "ypos" "y - sprite_height + (image_xscale == 1 ? 8 : 9)"
												/// @DnDArgument : "var" "pistol_flash_inst"
												/// @DnDArgument : "objectid" "PistolBulletFlashObj"
												/// @DnDArgument : "layer" ""Front""
												/// @DnDSaveInfo : "objectid" "PistolBulletFlashObj"
												pistol_flash_inst = instance_create_layer(x + (image_xscale == 1 ? 14 : -14), y - sprite_height + (image_xscale == 1 ? 8 : 9), "Front", PistolBulletFlashObj);
											
												/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 0868181C
												/// @DnDParent : 10940620
												/// @DnDArgument : "expr" "image_xscale == 1 ? 0 : 180"
												/// @DnDArgument : "var" "pistol_flash_inst.image_angle"
												pistol_flash_inst.image_angle = image_xscale == 1 ? 0 : 180;
											}
										}
									}
								}
							}
						}
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 5FE3964C
				/// @DnDParent : 2DAEB3C7
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 77F2CC8B
					/// @DnDParent : 5FE3964C
					/// @DnDArgument : "expr" "is_player_finishing_attack || is_weapon_being_lowered"
					if(is_player_finishing_attack || is_weapon_being_lowered)
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 314CD565
						/// @DnDParent : 77F2CC8B
						/// @DnDArgument : "expr" "!is_player_readying_attack"
						if(!is_player_readying_attack)
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 1D3EE97D
							/// @DnDParent : 314CD565
							/// @DnDArgument : "var" "image_index"
							image_index = 0;
						
							/// @DnDAction : YoYo Games.Audio.Play_Audio
							/// @DnDVersion : 1
							/// @DnDHash : 24560D46
							/// @DnDParent : 314CD565
							/// @DnDArgument : "soundid" "PlayerPistolLowerSound"
							/// @DnDSaveInfo : "soundid" "PlayerPistolLowerSound"
							audio_play_sound(PlayerPistolLowerSound, 0, 0);
						}
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 55E69BE1
						/// @DnDInput : 3
						/// @DnDParent : 77F2CC8B
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "is_player_readying_attack"
						/// @DnDArgument : "var_1" "hspeed"
						/// @DnDArgument : "var_2" "can_player_ready_attack"
						is_player_readying_attack = 1;
						hspeed = 0;
						can_player_ready_attack = 0;
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 77E47EA4
						/// @DnDParent : 77F2CC8B
						/// @DnDArgument : "expr" "player_weapon_using == "Pistol""
						if(player_weapon_using == "Pistol")
						{
							/// @DnDAction : YoYo Games.Instances.Set_Sprite
							/// @DnDVersion : 1
							/// @DnDHash : 6B5F0485
							/// @DnDParent : 77E47EA4
							/// @DnDArgument : "imageind_relative" "1"
							/// @DnDArgument : "spriteind" "PlayerShootDoneSpr"
							/// @DnDSaveInfo : "spriteind" "PlayerShootDoneSpr"
							sprite_index = PlayerShootDoneSpr;
							image_index += 0;
						}
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 13E22D21
						/// @DnDParent : 77F2CC8B
						/// @DnDArgument : "expr" "player_weapon_using == "Hatchet""
						if(player_weapon_using == "Hatchet")
						{
							/// @DnDAction : YoYo Games.Instances.Set_Sprite
							/// @DnDVersion : 1
							/// @DnDHash : 6E9AF2D8
							/// @DnDParent : 13E22D21
							/// @DnDArgument : "imageind_relative" "1"
							/// @DnDArgument : "spriteind" "PlayerHatchetDoneSpr"
							/// @DnDSaveInfo : "spriteind" "PlayerHatchetDoneSpr"
							sprite_index = PlayerHatchetDoneSpr;
							image_index += 0;
						}
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4F4CD689
						/// @DnDParent : 77F2CC8B
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "is_weapon_being_lowered"
						is_weapon_being_lowered = 1;
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 09470721
						/// @DnDParent : 77F2CC8B
						/// @DnDArgument : "expr" "image_index >= image_number - 1"
						if(image_index >= image_number - 1)
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 1C33AC12
							/// @DnDInput : 4
							/// @DnDParent : 09470721
							/// @DnDArgument : "expr_2" "1"
							/// @DnDArgument : "expr_3" "button_left ? -1 : (button_right ? 1 : image_xscale)"
							/// @DnDArgument : "var" "is_player_finishing_attack"
							/// @DnDArgument : "var_1" "is_weapon_being_lowered"
							/// @DnDArgument : "var_2" "can_player_ready_attack"
							/// @DnDArgument : "var_3" "image_xscale"
							is_player_finishing_attack = 0;
							is_weapon_being_lowered = 0;
							can_player_ready_attack = 1;
							image_xscale = button_left ? -1 : (button_right ? 1 : image_xscale);
						}
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 25705369
					/// @DnDParent : 5FE3964C
					else
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 5594F5FE
						/// @DnDParent : 25705369
						/// @DnDArgument : "expr" "has_player_started_item || is_player_using_item"
						if(has_player_started_item || is_player_using_item)
						{
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 2C935300
							/// @DnDParent : 5594F5FE
							/// @DnDArgument : "expr" "has_player_started_item"
							if(has_player_started_item)
							{
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 4AB24CB1
								/// @DnDParent : 2C935300
								/// @DnDArgument : "var" "image_index"
								image_index = 0;
							}
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 28EE933F
							/// @DnDInput : 3
							/// @DnDParent : 5594F5FE
							/// @DnDArgument : "expr_1" "1"
							/// @DnDArgument : "var" "hspeed"
							/// @DnDArgument : "var_1" "is_player_using_item"
							/// @DnDArgument : "var_2" "has_player_started_item"
							hspeed = 0;
							is_player_using_item = 1;
							has_player_started_item = 0;
						
							/// @DnDAction : YoYo Games.Switch.Switch
							/// @DnDVersion : 1
							/// @DnDHash : 319515E9
							/// @DnDParent : 5594F5FE
							/// @DnDArgument : "expr" "player_item_inst"
							var l319515E9_0 = player_item_inst;
							switch(l319515E9_0)
							{
								/// @DnDAction : YoYo Games.Switch.Case
								/// @DnDVersion : 1
								/// @DnDHash : 71692FFB
								/// @DnDParent : 319515E9
								/// @DnDArgument : "const" "MeatItemObj"
								case MeatItemObj:
									/// @DnDAction : YoYo Games.Instances.Set_Sprite
									/// @DnDVersion : 1
									/// @DnDHash : 74614CE1
									/// @DnDParent : 71692FFB
									/// @DnDArgument : "imageind_relative" "1"
									/// @DnDArgument : "spriteind" "PlayerMeatThrowSpr"
									/// @DnDSaveInfo : "spriteind" "PlayerMeatThrowSpr"
									sprite_index = PlayerMeatThrowSpr;
									image_index += 0;
								
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 432D0157
									/// @DnDParent : 71692FFB
									/// @DnDArgument : "expr" "sprite_index == PlayerMeatThrowSpr && image_index == 2"
									if(sprite_index == PlayerMeatThrowSpr && image_index == 2)
									{
										/// @DnDAction : YoYo Games.Audio.Play_Audio
										/// @DnDVersion : 1
										/// @DnDHash : 672EFBC0
										/// @DnDParent : 432D0157
										/// @DnDArgument : "soundid" "PlayerTossSound"
										/// @DnDSaveInfo : "soundid" "PlayerTossSound"
										audio_play_sound(PlayerTossSound, 0, 0);
									
										/// @DnDAction : YoYo Games.Instances.Create_Instance
										/// @DnDVersion : 1
										/// @DnDHash : 3074AEDE
										/// @DnDParent : 432D0157
										/// @DnDArgument : "xpos" "(sprite_width / 2)"
										/// @DnDArgument : "xpos_relative" "1"
										/// @DnDArgument : "ypos" "-12"
										/// @DnDArgument : "ypos_relative" "1"
										/// @DnDArgument : "var" "meat_item_inst"
										/// @DnDArgument : "objectid" "MeatItemObj"
										/// @DnDArgument : "layer" ""Front""
										/// @DnDSaveInfo : "objectid" "MeatItemObj"
										meat_item_inst = instance_create_layer(x + (sprite_width / 2), y + -12, "Front", MeatItemObj);
									
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 2C979160
										/// @DnDInput : 2
										/// @DnDParent : 432D0157
										/// @DnDArgument : "expr" "image_xscale * 2"
										/// @DnDArgument : "expr_1" "-2"
										/// @DnDArgument : "var" "meat_item_inst.hspeed"
										/// @DnDArgument : "var_1" "meat_item_inst.vspeed"
										meat_item_inst.hspeed = image_xscale * 2;
										meat_item_inst.vspeed = -2;
									}
								
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 5CFF2E93
									/// @DnDParent : 71692FFB
									/// @DnDArgument : "expr" "sprite_index == PlayerMeatThrowSpr && image_index >= image_number - 1"
									if(sprite_index == PlayerMeatThrowSpr && image_index >= image_number - 1)
									{
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 5F2C5F7A
										/// @DnDParent : 5CFF2E93
										/// @DnDArgument : "var" "is_player_using_item"
										is_player_using_item = 0;
									}
									break;
							}
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 72E87EF1
						/// @DnDParent : 25705369
						else
						{
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 571C2AA4
							/// @DnDParent : 72E87EF1
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
								/// @DnDInput : 2
								/// @DnDParent : 571C2AA4
								/// @DnDArgument : "expr" "1"
								/// @DnDArgument : "expr_1" "hspeed_reduce_delay - 1"
								/// @DnDArgument : "var" "image_xscale"
								/// @DnDArgument : "var_1" "hspeed_reduce_delay"
								image_xscale = 1;
								hspeed_reduce_delay = hspeed_reduce_delay - 1;
							
								/// @DnDAction : YoYo Games.Instances.Set_Sprite
								/// @DnDVersion : 1
								/// @DnDHash : 2AF5E8EC
								/// @DnDParent : 571C2AA4
								/// @DnDArgument : "imageind_relative" "1"
								/// @DnDArgument : "spriteind" "PlayerRunSpr"
								/// @DnDSaveInfo : "spriteind" "PlayerRunSpr"
								sprite_index = PlayerRunSpr;
								image_index += 0;
							
								/// @DnDAction : YoYo Games.Common.If_Expression
								/// @DnDVersion : 1
								/// @DnDHash : 70F1926C
								/// @DnDParent : 571C2AA4
								/// @DnDArgument : "expr" "hspeed_reduce_delay == 0"
								if(hspeed_reduce_delay == 0)
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 253091EB
									/// @DnDParent : 70F1926C
									/// @DnDArgument : "expr" "hspeed_reduce_delay_max"
									/// @DnDArgument : "var" "hspeed_reduce_delay"
									hspeed_reduce_delay = hspeed_reduce_delay_max;
								
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 666BB5CA
									/// @DnDParent : 70F1926C
									/// @DnDArgument : "expr" "run_speed != 2"
									if(run_speed != 2)
									{
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 3974C16A
										/// @DnDParent : 666BB5CA
										/// @DnDArgument : "expr" "run_speed + 1"
										/// @DnDArgument : "var" "run_speed"
										run_speed = run_speed + 1;
									}
								}
							}
						
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 0BC51781
							/// @DnDParent : 72E87EF1
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
								/// @DnDInput : 2
								/// @DnDParent : 0BC51781
								/// @DnDArgument : "expr" "-1"
								/// @DnDArgument : "expr_1" "hspeed_reduce_delay - 1"
								/// @DnDArgument : "var" "image_xscale"
								/// @DnDArgument : "var_1" "hspeed_reduce_delay"
								image_xscale = -1;
								hspeed_reduce_delay = hspeed_reduce_delay - 1;
							
								/// @DnDAction : YoYo Games.Instances.Set_Sprite
								/// @DnDVersion : 1
								/// @DnDHash : 64D1D2AB
								/// @DnDParent : 0BC51781
								/// @DnDArgument : "imageind_relative" "1"
								/// @DnDArgument : "spriteind" "PlayerRunSpr"
								/// @DnDSaveInfo : "spriteind" "PlayerRunSpr"
								sprite_index = PlayerRunSpr;
								image_index += 0;
							
								/// @DnDAction : YoYo Games.Common.If_Expression
								/// @DnDVersion : 1
								/// @DnDHash : 7FE23F9B
								/// @DnDParent : 0BC51781
								/// @DnDArgument : "expr" "hspeed_reduce_delay == 0"
								if(hspeed_reduce_delay == 0)
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 1E567452
									/// @DnDParent : 7FE23F9B
									/// @DnDArgument : "expr" "hspeed_reduce_delay_max"
									/// @DnDArgument : "var" "hspeed_reduce_delay"
									hspeed_reduce_delay = hspeed_reduce_delay_max;
								
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 7A90D95C
									/// @DnDParent : 7FE23F9B
									/// @DnDArgument : "expr" "run_speed != 2"
									if(run_speed != 2)
									{
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4A5AB783
										/// @DnDParent : 7A90D95C
										/// @DnDArgument : "expr" "run_speed + 1"
										/// @DnDArgument : "var" "run_speed"
										run_speed = run_speed + 1;
									}
								}
							}
						
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 75440647
							/// @DnDParent : 72E87EF1
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
							/// @DnDParent : 72E87EF1
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
			}
		}
	}
}