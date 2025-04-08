var nineSlice = sprite_get_nineslice(PuzzleBorderSprite);

// Downscaled
nineSlice.enabled = false;
draw_sprite_ext(PuzzleBorderSprite, 0, x, y, 5, 5, 0, c_white, 1);

// Upscaled
nineSlice.enabled = true;
draw_sprite_ext(PuzzleBorderSprite, 0, x, y+200, 4, 4, 0, c_white, 1);

draw_nineslice_stretched_ext(
	PuzzleBorderSprite,
	0,
	100,
	100,
	30,
	20,
	20,
	20,
	0,
	c_white,
	1
)

/*
draw_sprite_stretched_ext(
    PuzzleBorderSprite,
    0,
    100,
    50,
	800,   
    400,      
    c_white,
	1       
)
*/

draw_sprite_ext(    
    PuzzleElementSprite,
    0,
    100 + (400/2),
    50 + (200/2),
    5,
    5,
    0,
    c_white,
    1
)