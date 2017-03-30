/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 583CA90A
/// @DnDArgument : "code" "/// @description Get the player's input$(13_10)$(13_10)// Whether or not any key is pressed, returns 1 or 0$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_left = -keyboard_check(vk_left);$(13_10)key_jump = keyboard_check_pressed(vk_up);$(13_10)$(13_10)// React to inputs$(13_10)move = key_left + key_right;$(13_10)hsp = move * movespeed;$(13_10)$(13_10)// Set max fall acceleration to 10, apply gravity$(13_10)if(vsp < 10){$(13_10)	vsp += grav;	$(13_10)}$(13_10)$(13_10)// stop if right above a wall$(13_10)if(place_meeting(x,y+1,obj_wall))$(13_10){$(13_10)	vsp = key_jump * -jumpspeed;$(13_10)}$(13_10)$(13_10)// Check for collisions$(13_10)// Horizontal Collision$(13_10)// Check if your future x is colliding with a wall$(13_10)if(place_meeting(x+hsp, y, obj_wall))$(13_10){$(13_10)	// Move one pixel after another until you're right next to the wall$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)// Vertical Collision$(13_10)// Check if your future y is colliding with a wall$(13_10)if(place_meeting(x, y+vsp, obj_wall))$(13_10){$(13_10)	// Move one pixel after another until you're right next to the wall$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)// Apply speed to position$(13_10)x += hsp;$(13_10)y += vsp;"

{
	/// @description Get the player's input

// Whether or not any key is pressed, returns 1 or 0
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);

// React to inputs
move = key_left + key_right;
hsp = move * movespeed;

// Set max fall acceleration to 10, apply gravity
if(vsp < 10){
	vsp += grav;	
}

// stop if right above a wall
if(place_meeting(x,y+1,obj_wall))
{
	vsp = key_jump * -jumpspeed;
}

// Check for collisions
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
}

// Apply speed to position
x += hsp;
y += vsp;
}

