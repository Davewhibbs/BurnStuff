/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 32512F1A
/// @DnDArgument : "code" "/// @description Reswpawn at checkpoints$(13_10)$(13_10)if(global.checkpointR != 0)$(13_10){$(13_10)	room_goto(global.checkpointR);$(13_10)}$(13_10)else$(13_10){$(13_10)	room_restart();$(13_10)}$(13_10)$(13_10)audio_play_sound(snd_player_death, 10, false);"

{
	/// @description Reswpawn at checkpoints

if(global.checkpointR != 0)
{
	room_goto(global.checkpointR);
}
else
{
	room_restart();
}

audio_play_sound(snd_player_death, 10, false);
}

