/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C75C718
/// @DnDArgument : "code" "/// @description Establish Global Variables$(13_10)$(13_10)global.checkpoint = noone;	// current checkpoint$(13_10)global.checkpointR = 0;		// which room is it in$(13_10)global.checkpointx = 0;		// xpos$(13_10)global.checkpointy = 0;		// ypos$(13_10)$(13_10)room_goto_next();"

{
	/// @description Establish Global Variables

global.checkpoint = noone;	// current checkpoint
global.checkpointR = 0;		// which room is it in
global.checkpointx = 0;		// xpos
global.checkpointy = 0;		// ypos

room_goto_next();
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5EDD81DD
/// @DnDArgument : "soundid" "snd_music"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "db49792f-8976-4c3c-8071-e0c86699367a"

{
	audio_play_sound(snd_music, 0, 1);
}

