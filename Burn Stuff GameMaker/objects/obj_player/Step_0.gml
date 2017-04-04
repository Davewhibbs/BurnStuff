/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 583CA90A
/// @DnDArgument : "code" "/// @description Get the player's input$(13_10)$(13_10)// Whether or not any key is pressed, returns 1 or 0$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_left = -keyboard_check(vk_left);$(13_10)key_jump = keyboard_check_pressed(vk_up);$(13_10)key_jump_held = keyboard_check(vk_up);$(13_10)key_down = keyboard_check(vk_down);$(13_10)key_shoot = keyboard_check(vk_space);$(13_10)$(13_10)// React to inputs$(13_10)move = key_left + key_right;$(13_10)hsp = move * movespeed;$(13_10)$(13_10)// Set max fall acceleration to 10, apply gravity$(13_10)if(vsp < 20){$(13_10)	vsp += grav;	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)// stop if right above a wall$(13_10)$(13_10)	// reset the numnber of jumps$(13_10)	if(place_meeting(x, y+1, obj_wall))$(13_10)	{	$(13_10)		jumps = jumpsmax;$(13_10)	}$(13_10)$(13_10)$(13_10)	// allow for double jumping$(13_10)	if(key_jump && jumps > 0)$(13_10)	{$(13_10)		vsp = -jumpspeed;$(13_10)		jumps -= 1;$(13_10)	}$(13_10)	$(13_10)	$(13_10)	// Hold for larger jump$(13_10)	if(vsp < 0) && (!key_jump_held)$(13_10)	{$(13_10)		vsp = max(vsp, -jumpspeed/4);$(13_10)	}$(13_10)$(13_10)	// Check for collisions$(13_10)	// Horizontal Collision$(13_10)	// Check if your future x is colliding with a wall$(13_10)	if(place_meeting(x+hsp, y, obj_wall))$(13_10)	{$(13_10)		// Move one pixel after another until you're right next to the wall$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		}$(13_10)		hsp = 0;$(13_10)	}$(13_10)	$(13_10)	// Vertical Collision$(13_10)	// Check if your future y is colliding with a wall$(13_10)	if(place_meeting(x, y+vsp, obj_wall))$(13_10)		{$(13_10)		// Move one pixel after another until you're right next to the wall$(13_10)		while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)		{$(13_10)			y += sign(vsp);$(13_10)		}$(13_10)		vsp = 0;$(13_10)	}$(13_10)	$(13_10)	// Apply change to dir$(13_10)	if(hsp != 0)$(13_10)	{$(13_10)		dir = sign(hsp);$(13_10)	}$(13_10)	$(13_10)	// Apply speed to position$(13_10)	x += hsp;$(13_10)	y += vsp;$(13_10)	$(13_10)	$(13_10)	$(13_10)	/// ANIMATION$(13_10)	// Handle Animations$(13_10)	image_xscale = dir;		// 1=right, -1=left, 0 = nothing$(13_10)$(13_10)	// if on the floor$(13_10)	if(place_meeting(x,y+1,obj_wall))$(13_10)	{	$(13_10)		// Running animation$(13_10)		if(move!= 0) $(13_10)		{$(13_10)			sprite_index = spr_player_run;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = spr_player_idle;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	// if in the air$(13_10)	else$(13_10)	{$(13_10)		// jumping$(13_10)		if(vsp < 0)$(13_10)		{$(13_10)			sprite_index = spr_player_jump;$(13_10)		}$(13_10)		// falling$(13_10)		else$(13_10)		{$(13_10)			sprite_index = spr_player_fall;$(13_10)		}$(13_10)	}$(13_10)$(13_10)"

{
	/// @description Get the player's input

// Whether or not any key is pressed, returns 1 or 0
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);
key_jump_held = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_shoot = keyboard_check(vk_space);

// React to inputs
move = key_left + key_right;
hsp = move * movespeed;

// Set max fall acceleration to 10, apply gravity
if(vsp < 20){
	vsp += grav;	
}



// stop if right above a wall

	// reset the numnber of jumps
	if(place_meeting(x, y+1, obj_wall))
	{	
		jumps = jumpsmax;
	}


	// allow for double jumping
	if(key_jump && jumps > 0)
	{
		vsp = -jumpspeed;
		jumps -= 1;
	}
	
	
	// Hold for larger jump
	if(vsp < 0) && (!key_jump_held)
	{
		vsp = max(vsp, -jumpspeed/4);
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
	
	// Apply change to dir
	if(hsp != 0)
	{
		dir = sign(hsp);
	}
	
	// Apply speed to position
	x += hsp;
	y += vsp;
	
	
	
	/// ANIMATION
	// Handle Animations
	image_xscale = dir;		// 1=right, -1=left, 0 = nothing

	// if on the floor
	if(place_meeting(x,y+1,obj_wall))
	{	
		// Running animation
		if(move!= 0) 
		{
			sprite_index = spr_player_run;
		}
		else
		{
			sprite_index = spr_player_idle;
		}
	}
	
	// if in the air
	else
	{
		// jumping
		if(vsp < 0)
		{
			sprite_index = spr_player_jump;
		}
		// falling
		else
		{
			sprite_index = spr_player_fall;
		}
	}


}

