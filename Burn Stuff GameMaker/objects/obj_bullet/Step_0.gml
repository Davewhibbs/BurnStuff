/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1CE4D6B2
/// @DnDArgument : "code" "/// @description Move until Hitting a Wall or Enemy$(13_10)$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)$(13_10)/// COLLISIONS$(13_10)// Horizontal Collision with wall destroys bullet$(13_10)	// Check if your future x is colliding with a wall$(13_10)	if(place_meeting(x+hsp, y, obj_wall))$(13_10)	{$(13_10)		// Move one pixel after another until you're right next to the wall$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		}$(13_10)		$(13_10)		// Destroy the bullet$(13_10)		instance_destroy();$(13_10)	}$(13_10)"

{
	/// @description Move until Hitting a Wall or Enemy


x += hsp;


/// COLLISIONS
// Horizontal Collision with wall destroys bullet
	// Check if your future x is colliding with a wall
	if(place_meeting(x+hsp, y, obj_wall))
	{
		// Move one pixel after another until you're right next to the wall
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		}
		
		// Destroy the bullet
		instance_destroy();
	}

}

