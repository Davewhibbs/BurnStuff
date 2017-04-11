/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4732FA39
/// @DnDArgument : "code" "///@param tile_map_id$(13_10)///@param point_arrays...$(13_10)var tile_map_id = argument[0];$(13_10)$(13_10)// Found variable$(13_10)var found = false;$(13_10)$(13_10)// for the point arrays$(13_10)var vector2_x = 0;$(13_10)var vector2_y = 1;$(13_10)$(13_10)// Loop through the points and check for a tile$(13_10)for(var i = 1; i < argument_count; i++)$(13_10){$(13_10)	var point = argument[i];$(13_10)	found = found || tilemap_get_at_pixel(tile_map_id, point[vector2_x], point[vector2_y]);$(13_10)}$(13_10)$(13_10)// Return found$(13_10)return found;$(13_10)"

{
	///@param tile_map_id
///@param point_arrays...
var tile_map_id = argument[0];

// Found variable
var found = false;

// for the point arrays
var vector2_x = 0;
var vector2_y = 1;

// Loop through the points and check for a tile
for(var i = 1; i < argument_count; i++)
{
	var point = argument[i];
	found = found || tilemap_get_at_pixel(tile_map_id, point[vector2_x], point[vector2_y]);
}

// Return found
return found;

}

