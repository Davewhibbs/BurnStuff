/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 111682C8
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)// Collision with ceiling or floor$(13_10)if(place_meeting(x, y + vsp, obj_wall))$(13_10){$(13_10)	// Move one pixel after another until rou're right next to the wall$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	$(13_10)	// Switch directions$(13_10)	vsp *= -1;$(13_10)}$(13_10)$(13_10)y += vsp;$(13_10)$(13_10)$(13_10)// Collision with player$(13_10)if(place_meeting(x,y,obj_player))$(13_10){$(13_10)	// Kill the player$(13_10)	scr_death();$(13_10)}$(13_10)$(13_10)"

{
	/// @description Execute Code\n

// Collision with ceiling or floor
if(place_meeting(x, y + vsp, obj_wall))
{
	// Move one pixel after another until rou're right next to the wall
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	
	// Switch directions
	vsp *= -1;
}

y += vsp;


// Collision with player
if(place_meeting(x,y,obj_player))
{
	// Kill the player
	scr_death();
}


}

