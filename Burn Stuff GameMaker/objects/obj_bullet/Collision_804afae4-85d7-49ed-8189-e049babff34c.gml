/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 15C718BB
/// @DnDArgument : "soundid" "snd_enemy_death"
/// @DnDSaveInfo : "soundid" "5ab9909c-844c-40ec-a587-d013fdcf0b61"

{
	audio_play_sound(snd_enemy_death, 0, 0);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7FAE3351
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3F173371
instance_destroy();

