/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 031A2290
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_xscale = dir;$(13_10)hsp = dir * movespeed;$(13_10)vsp += grav;$(13_10)$(13_10)$(13_10)// COLLISION CODE$(13_10)$(13_10)// Horizontal Wall Collision$(13_10)// Check if your future x is colliding with a wall$(13_10)if(place_meeting(x+hsp, y, obj_wall))$(13_10){$(13_10)	// Move one pixel after another until you're right next to the wall$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	$(13_10)	// Turn Around$(13_10)	dir *= -1;$(13_10)}$(13_10)$(13_10)$(13_10)// Vertical Wall Collision$(13_10)// Check if your future y is colliding with a wall$(13_10)if(place_meeting(x, y+vsp, obj_wall))$(13_10){$(13_10)	// Move one pixel after another until you're right next to the wall$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)	$(13_10)	// Not walking off ledges$(13_10)	if(!position_meeting(x + (sprite_width/2), y +(sprite_height/2) + 8, obj_wall))$(13_10)	{$(13_10)		// Turn Around$(13_10)		dir *= -1;$(13_10)		$(13_10)		// reset hsp for new direction$(13_10)		hsp = dir * movespeed;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)// Apply speed to position$(13_10)x += hsp;$(13_10)y += vsp;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)// collide with player, kill the player$(13_10)if(place_meeting(x,y,obj_player))$(13_10){$(13_10)		scr_death();$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"

{
	/// @description Execute Code\n

image_xscale = dir;
hsp = dir * movespeed;
vsp += grav;


// COLLISION CODE

// Horizontal Wall Collision
// Check if your future x is colliding with a wall
if(place_meeting(x+hsp, y, obj_wall))
{
	// Move one pixel after another until you're right next to the wall
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	
	// Turn Around
	dir *= -1;
}


// Vertical Wall Collision
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
	if(!position_meeting(x + (sprite_width/2), y +(sprite_height/2) + 8, obj_wall))
	{
		// Turn Around
		dir *= -1;
		
		// reset hsp for new direction
		hsp = dir * movespeed;
	}
}



// Apply speed to position
x += hsp;
y += vsp;




// collide with player, kill the player
if(place_meeting(x,y,obj_player))
{
		scr_death();
}




}

