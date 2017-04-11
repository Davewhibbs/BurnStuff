/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0340079A
/// @DnDArgument : "code" "/// @param tile_map_id$(13_10)/// @param tile_size$(13_10)/// @param velocity_array$(13_10)$(13_10)var tile_map_id = argument0;$(13_10)var tile_size = argument1;$(13_10)var velocity = argument2;$(13_10)$(13_10)// For the velocity array$(13_10)var vector2_x = 0;$(13_10)var vector2_y = 1;$(13_10)$(13_10)// Move horizontally$(13_10)x += velocity[vector2_x];$(13_10)$(13_10)// Right collisions$(13_10)if(velocity[vector2_x] > 0)$(13_10){$(13_10)	var tile_right = scr_tile_collide_at_point(tile_map_id, [bbox_right-1,bbox_top], [bbox_right-1, bbox_bottom-1]);$(13_10)	if tile_right{$(13_10)		x = bbox_right & ~(tile_size-1);$(13_10)		x -= bbox_right - x;$(13_10)		velocity[@ vector2_x] = 0;$(13_10)	}$(13_10)}$(13_10)// Left Colliding$(13_10)else$(13_10){$(13_10)	var tile_left = scr_tile_collide_at_point(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);$(13_10)	if tile_left$(13_10)	{$(13_10)		x = bbox_left & ~(tile_size-1);$(13_10)		x += tile_size + x - bbox_left;$(13_10)		velocity[@ vector2_x] = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)// Move Vertically$(13_10)y += velocity[vector2_y];$(13_10)$(13_10)// Vertical Collisions$(13_10)if(velocity[vector2_y]) > 0{$(13_10)	var tile_bottom = scr_tile_collide_at_point(tile_map_id, [bbox_left, bbox_bottom -1], [bbox_right -1, bbox_left-1]);	$(13_10)	if tile_bottom$(13_10)	{$(13_10)		y = bbox_bottom & ~(tile_size-1);$(13_10)		y -= bbox_bottom-1;$(13_10)		velocity[@ vector2_y] = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	var tile_top = scr_tile_collide_at_point(tile_map_id, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);$(13_10)	if tile_top$(13_10)	{$(13_10)		y = bbox_top & ~(tile_size-1);$(13_10)		y += tile_size + y - bbox_top;$(13_10)		velocity[@ vector2_y] = 0;$(13_10)	}$(13_10)}"

{
	/// @param tile_map_id
/// @param tile_size
/// @param velocity_array

var tile_map_id = argument0;
var tile_size = argument1;
var velocity = argument2;

// For the velocity array
var vector2_x = 0;
var vector2_y = 1;

// Move horizontally
x += velocity[vector2_x];

// Right collisions
if(velocity[vector2_x] > 0)
{
	var tile_right = scr_tile_collide_at_point(tile_map_id, [bbox_right-1,bbox_top], [bbox_right-1, bbox_bottom-1]);
	if tile_right{
		x = bbox_right & ~(tile_size-1);
		x -= bbox_right - x;
		velocity[@ vector2_x] = 0;
	}
}
// Left Colliding
else
{
	var tile_left = scr_tile_collide_at_point(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
	if tile_left
	{
		x = bbox_left & ~(tile_size-1);
		x += tile_size + x - bbox_left;
		velocity[@ vector2_x] = 0;
	}
}


// Move Vertically
y += velocity[vector2_y];

// Vertical Collisions
if(velocity[vector2_y]) > 0{
	var tile_bottom = scr_tile_collide_at_point(tile_map_id, [bbox_left, bbox_bottom -1], [bbox_right -1, bbox_left-1]);	
	if tile_bottom
	{
		y = bbox_bottom & ~(tile_size-1);
		y -= bbox_bottom-1;
		velocity[@ vector2_y] = 0;
	}
}

else
{
	var tile_top = scr_tile_collide_at_point(tile_map_id, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);
	if tile_top
	{
		y = bbox_top & ~(tile_size-1);
		y += tile_size + y - bbox_top;
		velocity[@ vector2_y] = 0;
	}
}
}

