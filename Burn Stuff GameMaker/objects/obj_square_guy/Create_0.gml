/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 486FFCFE
/// @DnDArgument : "code" "/// @description Movement Variables$(13_10)velocity_ = [0,0];$(13_10)gravity_ = 1.5;$(13_10)jump_speed_ = 28;$(13_10)max_velocity_ = [8, 32];$(13_10)acceleration_ = 2.1;$(13_10)$(13_10)// Get the tilemap id$(13_10)var layer_id = layer_get_id("CollisionTiles");$(13_10)collision_tile_map_id = layer_tilemap_get_id(layer_id);"

{
	/// @description Movement Variables
velocity_ = [0,0];
gravity_ = 1.5;
jump_speed_ = 28;
max_velocity_ = [8, 32];
acceleration_ = 2.1;

// Get the tilemap id
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);
}

