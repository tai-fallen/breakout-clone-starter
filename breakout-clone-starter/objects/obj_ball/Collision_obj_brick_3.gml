// This is the new, key interaction for this lesson.

// Reverse vertical speed to bounce off the brick.
vspeed = -vspeed;

// Tell the other instance (the brick) to destroy itself.
instance_destroy(other);


// Add one point to the score.
obj_game.scored +=10;

// Play a different sound for breaking a brick.
audio_play_sound(sfx_break, 1, false);