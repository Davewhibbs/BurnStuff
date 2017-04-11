/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7DA1F4FE
/// @DnDArgument : "code" "/// @description Movement logic$(13_10)// Get the input$(13_10)var x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)) * acceleration_;$(13_10)$(13_10)// Vector Variables$(13_10)var vector2_x = 0;$(13_10)var vector2_y = 1;$(13_10)$(13_10)// Horizontal movement$(13_10)velocity_[vector2_x] = clamp(velocity_[vector2_x] + x_input, -max_velocity_[vector2_x], max_velocity_[vector2_x]);$(13_10)$(13_10)// Friction$(13_10)if x_input == 0$(13_10){$(13_10)	velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .2);$(13_10)}$(13_10)$(13_10)// Gravity$(13_10)velocity_[vector2_y] += gravity_;$(13_10)$(13_10)// Move and contact tiles$(13_10)scr_move_and_contact_tiles(collision_tile_map_id, 32, velocity_);$(13_10)"

{
	/// @description Movement logic
// Get the input
var x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)) * acceleration_;

// Vector Variables
var vector2_x = 0;
var vector2_y = 1;

// Horizontal movement
velocity_[vector2_x] = clamp(velocity_[vector2_x] + x_input, -max_velocity_[vector2_x], max_velocity_[vector2_x]);

// Friction
if x_input == 0
{
	velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .2);
}

// Gravity
velocity_[vector2_y] += gravity_;

// Move and contact tiles
scr_move_and_contact_tiles(collision_tile_map_id, 32, velocity_);

}

