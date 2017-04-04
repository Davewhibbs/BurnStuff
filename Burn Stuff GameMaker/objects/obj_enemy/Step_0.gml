/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 031A2290
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)hsp = dir * movespeed;$(13_10)vsp += grav;$(13_10)$(13_10)$(13_10)$(13_10)// COLLISION CODE$(13_10)$(13_10)// Horizontal Collision$(13_10)// Check if your future x is colliding with a wall$(13_10)if(place_meeting(x+hsp, y, obj_wall))$(13_10){$(13_10)	// Move one pixel after another until you're right next to the wall$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)	$(13_10)	// Turn Around$(13_10)	dir *= -1;$(13_10)}$(13_10)$(13_10)// Vertical Collision$(13_10)// Check if your future y is colliding with a wall$(13_10)if(place_meeting(x, y+vsp, obj_wall))$(13_10){$(13_10)	// Move one pixel after another until you're right next to the wall$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)	$(13_10)	// Not walking off ledges$(13_10)	if(fearofheights) && !position_meeting(x + (sprite_width/2) * dir, y + (sprite_height/2) + 8, obj_wall)$(13_10)	{$(13_10)		dir *= -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)// Apply speed to position$(13_10)x += hsp;$(13_10)y += vsp;$(13_10)$(13_10)$(13_10)// Enemy Collision$(13_10)if(place_meeting(x,y,obj_player))$(13_10){$(13_10)	if(obj_player.y < y-16) // if we collide with the player from the top (16 pixels up)$(13_10)	{$(13_10)		with(obj_player)$(13_10)		{$(13_10)			vsp = -jumpspeed; // make the player bounce$(13_10)		}$(13_10)		instance_destroy(); // destory this enemy$(13_10)	}$(13_10)	else	// Enemy hits player$(13_10)	{$(13_10)		scr_death();$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"

{
	/// @description Execute Code\n

hsp = dir * movespeed;
vsp += grav;



// COLLISION CODE

// Horizontal Collision
// Check if your future x is colliding with a wall
if(place_meeting(x+hsp, y, obj_wall))
{
	// Move one pixel after another until you're right next to the wall
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
	
	// Turn Around
	dir *= -1;
}

// Vertical Collision
// Check if your future y is colliding with a wall
if(place_meeting(x, y+vsp, obj_wall))
{
	// Move one pixel after another until you're right next to the wall
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
	
	// Not walking off ledges
	if(fearofheights) && !position_meeting(x + (sprite_width/2) * dir, y + (sprite_height/2) + 8, obj_wall)
	{
		dir *= -1;
	}
}

// Apply speed to position
x += hsp;
y += vsp;


// Enemy Collision
if(place_meeting(x,y,obj_player))
{
	if(obj_player.y < y-16) // if we collide with the player from the top (16 pixels up)
	{
		with(obj_player)
		{
			vsp = -jumpspeed; // make the player bounce
		}
		instance_destroy(); // destory this enemy
	}
	else	// Enemy hits player
	{
		scr_death();
	}
}




}

