/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A02A548
/// @DnDArgument : "expr" "score + 100"
/// @DnDArgument : "var" "score"
score = score + 100;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7E83185C
/// @DnDApplyTo : {Object12}
/// @DnDArgument : "spriteind" "Sprite12"
/// @DnDSaveInfo : "spriteind" "Sprite12"
with(Object12) {
sprite_index = Sprite12;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 73B5F8B6
/// @DnDApplyTo : {Object13}
/// @DnDArgument : "spriteind" "Sprite12"
/// @DnDSaveInfo : "spriteind" "Sprite12"
with(Object13) {
sprite_index = Sprite12;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 04A3038C
/// @DnDApplyTo : {Object14}
/// @DnDArgument : "spriteind" "Sprite12"
/// @DnDSaveInfo : "spriteind" "Sprite12"
with(Object14) {
sprite_index = Sprite12;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 17E25FB5
/// @DnDApplyTo : {Object15}
/// @DnDArgument : "spriteind" "Sprite12"
/// @DnDSaveInfo : "spriteind" "Sprite12"
with(Object15) {
sprite_index = Sprite12;
image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0F52B9BA
/// @DnDApplyTo : other
/// @DnDArgument : "speed" "1"
with(other) speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66026E4F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.is_frozen"
global.is_frozen = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 34A78BBD
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 259B3CAF
/// @DnDArgument : "steps" "250"
alarm_set(0, 250);