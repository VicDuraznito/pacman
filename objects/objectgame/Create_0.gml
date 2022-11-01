/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 25050FFF
/// @DnDArgument : "soundid" "FirstLevelStart_snd"
/// @DnDSaveInfo : "soundid" "FirstLevelStart_snd"
audio_play_sound(FirstLevelStart_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 624B6473

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3FA10B8F
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "lives"
lives = 3;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 59AD644B
/// @DnDArgument : "var" "is_frozen"
global.is_frozen = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7C69D2F2
/// @DnDArgument : "var" "is_dying"
global.is_dying = 0;