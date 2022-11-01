/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4EEAC6F0
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0D93F506
/// @DnDApplyTo : {Object12}
with(Object12) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7A3E36E7
/// @DnDApplyTo : {Object13}
with(Object13) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2EABC995
/// @DnDApplyTo : {Object14}
with(Object14) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 421880D5
/// @DnDApplyTo : {Object15}
with(Object15) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A15729F
/// @DnDArgument : "expr" "lives - 1"
/// @DnDArgument : "var" "lives"
lives = lives - 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A3D66F0
/// @DnDArgument : "xpos" "144"
/// @DnDArgument : "ypos" "408"
/// @DnDArgument : "objectid" "Object2"
/// @DnDSaveInfo : "objectid" "Object2"
instance_create_layer(144, 408, "Instances", Object2);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3D5BD415
/// @DnDArgument : "xpos" "384"
/// @DnDArgument : "ypos" "420"
/// @DnDArgument : "objectid" "Object12"
/// @DnDSaveInfo : "objectid" "Object12"
instance_create_layer(384, 420, "Instances", Object12);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 31692EEA
/// @DnDArgument : "xpos" "384"
/// @DnDArgument : "ypos" "420"
/// @DnDArgument : "objectid" "Object13"
/// @DnDSaveInfo : "objectid" "Object13"
instance_create_layer(384, 420, "Instances", Object13);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 599F2D00
/// @DnDArgument : "xpos" "384"
/// @DnDArgument : "ypos" "420"
/// @DnDArgument : "objectid" "Object14"
/// @DnDSaveInfo : "objectid" "Object14"
instance_create_layer(384, 420, "Instances", Object14);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 01583C3C
/// @DnDArgument : "xpos" "384"
/// @DnDArgument : "ypos" "420"
/// @DnDArgument : "objectid" "Object15"
/// @DnDSaveInfo : "objectid" "Object15"
instance_create_layer(384, 420, "Instances", Object15);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53EAB3C9
/// @DnDArgument : "var" "global.is_dying"
global.is_dying = 0;