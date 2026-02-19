// This code runs every frame.

// --- PLAYER INPUT ---
// Define a variable for movement speed.
var move_speed = 10;

// Get horizontal input (returns -1 for left, 1 for right, 0 for no input)
var move_input = keyboard_check(vk_right) - keyboard_check(vk_left);

// Move the paddle
x += move_input * move_speed;


// --- BOUNDARIES ---
// Prevent the paddle from moving off the screen.
// We calculate the boundary based on half the paddle's width.
var half_width = sprite_width / 2;
x = clamp(x, half_width, room_width - half_width);
