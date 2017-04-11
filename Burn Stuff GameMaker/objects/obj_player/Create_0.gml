/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71CA2F05
/// @DnDArgument : "code" "/// @description Initialize Variables$(13_10)$(13_10)grav = 1;	// Gravity				gravity$(13_10)hsp = 0;	// Horizontal Speed		hspeed$(13_10)vsp = 0;	// Vertical Speed		vspeed$(13_10)movespeed = 6;$(13_10)dir = 1;$(13_10)jumps = 0;$(13_10)$(13_10)jumpsmax = 2;$(13_10)$(13_10)greenKey = 0;$(13_10)redKey = 0;$(13_10)blueKey = 0;$(13_10)$(13_10)// Debugging bullets$(13_10)bullet_distance = 16;$(13_10)bullettime_normal = 10;$(13_10)bullettime = 0;$(13_10)$(13_10)// Allow variable jumping speed for powerups$(13_10)jumpspeed_normal = 15;$(13_10)jumpspeed_powerup = 7;$(13_10)$(13_10)jumpspeed = jumpspeed_normal;$(13_10)$(13_10)$(13_10)// spawn at current checkpoint$(13_10)if (global.checkpointR == room)$(13_10){$(13_10)	x = global.checkpointx;$(13_10)	y = global.checkpointy$(13_10)}$(13_10)$(13_10)// This variable is used by the platform object$(13_10)key_down = 0;$(13_10)$(13_10)$(13_10)$(13_10)"

{
	/// @description Initialize Variables

grav = 1;	// Gravity				gravity
hsp = 0;	// Horizontal Speed		hspeed
vsp = 0;	// Vertical Speed		vspeed
movespeed = 6;
dir = 1;
jumps = 0;

jumpsmax = 2;

greenKey = 0;
redKey = 0;
blueKey = 0;

// Debugging bullets
bullet_distance = 16;
bullettime_normal = 10;
bullettime = 0;

// Allow variable jumping speed for powerups
jumpspeed_normal = 15;
jumpspeed_powerup = 7;

jumpspeed = jumpspeed_normal;


// spawn at current checkpoint
if (global.checkpointR == room)
{
	x = global.checkpointx;
	y = global.checkpointy
}

// This variable is used by the platform object
key_down = 0;




}

