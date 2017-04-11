/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2EA6D9DF
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_angle += 1; //rotate image$(13_10)$(13_10)// If the checkpoint collides with the player$(13_10)// If it's already activated, you don't need to activate it again$(13_10)if(activated == 0){$(13_10)if(place_meeting(x,y,obj_player))$(13_10){$(13_10)	// set global checkpoint variables$(13_10)	global.checkpoint = id;$(13_10)	global.checkpointx = x;$(13_10)	global.checkpointy = y;$(13_10)	global.checkpointR = room;	$(13_10)	$(13_10)	// Activate this checkpoint$(13_10)	activated = 1;$(13_10)	$(13_10)	// play checkpoint noise$(13_10)	audio_play_sound(snd_checkpoint, 10, false);$(13_10)}$(13_10)}$(13_10)$(13_10)// If the global checkpoint is not this one, deactivate this one$(13_10)if(global.checkpoint != id)$(13_10){$(13_10)	activated = 0;$(13_10)}$(13_10)$(13_10)if(global.checkpointR == room)$(13_10){$(13_10)	if(global.checkpoint == id)$(13_10)	{$(13_10)		image_index = 1;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		image_index = 0;$(13_10)	}$(13_10)}"

{
	/// @description Execute Code\n

image_angle += 1; //rotate image

// If the checkpoint collides with the player
// If it's already activated, you don't need to activate it again
if(activated == 0){
if(place_meeting(x,y,obj_player))
{
	// set global checkpoint variables
	global.checkpoint = id;
	global.checkpointx = x;
	global.checkpointy = y;
	global.checkpointR = room;	
	
	// Activate this checkpoint
	activated = 1;
	
	// play checkpoint noise
	audio_play_sound(snd_checkpoint, 10, false);
}
}

// If the global checkpoint is not this one, deactivate this one
if(global.checkpoint != id)
{
	activated = 0;
}

if(global.checkpointR == room)
{
	if(global.checkpoint == id)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
}

