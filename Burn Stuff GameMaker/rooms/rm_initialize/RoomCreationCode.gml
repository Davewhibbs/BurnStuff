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

