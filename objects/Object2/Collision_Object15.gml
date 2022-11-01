/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4974F2FE
/// @DnDApplyTo : other
/// @DnDArgument : "var" "global.is_frozen"
/// @DnDArgument : "value" "1"
with(other) var l4974F2FE_0 = global.is_frozen == 1;
if(l4974F2FE_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 721F7480
	/// @DnDParent : 4974F2FE
	/// @DnDArgument : "expr" "score + 300"
	/// @DnDArgument : "var" "score "
	score  = score + 300;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 174F9134
	/// @DnDApplyTo : other
	/// @DnDParent : 4974F2FE
	/// @DnDArgument : "x" "384"
	/// @DnDArgument : "y" "420"
	with(other) {
	x = 384;
	y = 420;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7D3931FD
	/// @DnDApplyTo : other
	/// @DnDParent : 4974F2FE
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 32F411CF
	/// @DnDApplyTo : other
	/// @DnDParent : 4974F2FE
	/// @DnDArgument : "speed" "1"
	with(other) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7BCAA623
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CBAE330
	/// @DnDParent : 7BCAA623
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 580BF734
		/// @DnDParent : 7CBAE330
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 23796035
		/// @DnDParent : 7CBAE330
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l23796035_0 = PacDies_snd;
		if (!audio_is_playing(l23796035_0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 407E471C
			/// @DnDApplyTo : {Object2}
			/// @DnDParent : 23796035
			/// @DnDArgument : "spriteind" "Sprite13"
			/// @DnDSaveInfo : "spriteind" "Sprite13"
			with(Object2) {
			sprite_index = Sprite13;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 44B0E691
			/// @DnDParent : 23796035
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EBCAE86
		/// @DnDParent : 7CBAE330
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 3059A71A
			/// @DnDParent : 4EBCAE86
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 43F82E9E
		/// @DnDParent : 7CBAE330
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4B621B8F
			/// @DnDParent : 43F82E9E
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}