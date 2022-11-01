/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49C6BD2D
/// @DnDApplyTo : other
/// @DnDArgument : "var" "global.is_frozen"
/// @DnDArgument : "value" "1"
with(other) var l49C6BD2D_0 = global.is_frozen == 1;
if(l49C6BD2D_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C273ADC
	/// @DnDParent : 49C6BD2D
	/// @DnDArgument : "expr" "score + 300"
	/// @DnDArgument : "var" "score "
	score  = score + 300;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 42C8F881
	/// @DnDApplyTo : other
	/// @DnDParent : 49C6BD2D
	/// @DnDArgument : "x" "384"
	/// @DnDArgument : "y" "420"
	with(other) {
	x = 384;
	y = 420;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 1B8BB5D3
	/// @DnDApplyTo : other
	/// @DnDParent : 49C6BD2D
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 42FEF2C0
	/// @DnDApplyTo : other
	/// @DnDParent : 49C6BD2D
	/// @DnDArgument : "speed" "1"
	with(other) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7CDA70E5
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22450CD1
	/// @DnDParent : 7CDA70E5
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C667728
		/// @DnDParent : 22450CD1
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 7D60B819
		/// @DnDParent : 22450CD1
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l7D60B819_0 = PacDies_snd;
		if (!audio_is_playing(l7D60B819_0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3482A80C
			/// @DnDApplyTo : {Object2}
			/// @DnDParent : 7D60B819
			/// @DnDArgument : "spriteind" "Sprite13"
			/// @DnDSaveInfo : "spriteind" "Sprite13"
			with(Object2) {
			sprite_index = Sprite13;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 193E90D6
			/// @DnDParent : 7D60B819
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 763F6A11
		/// @DnDParent : 22450CD1
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 51CF3767
			/// @DnDParent : 763F6A11
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 559E5D3B
		/// @DnDParent : 22450CD1
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 3C627D1F
			/// @DnDParent : 559E5D3B
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}