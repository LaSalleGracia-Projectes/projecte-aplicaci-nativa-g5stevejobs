draw_nineslice_stretched_ext(
    PuzzleBorderSprite,
    0,
    (display_get_gui_width() - puzzleWidth)/2,
    (display_get_gui_height() - puzzleHeight)/2,
    puzzleWidth,
    puzzleHeight,
    1,
    1,
    0,
    c_white,
    1
);

// Draw puzzle elements
scrInicializarPuzzle(slots);

// Draw held element if one is selected
if (isHoldingElement) {
    var elementColor = ds_map_find_value(elementColors, holdingValue);
    if (elementColor == undefined) elementColor = c_white;
    
    draw_sprite_ext(
        PuzzleElementSprite,
        0,
        mouse_x,
        mouse_y,
        5,
        5,
        0,
        elementColor,
        0.8
    );
}


if (hasWon) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(MenuTitleFont);
    draw_set_color(c_white);

    draw_text(
        display_get_gui_width() / 2,
        32,
        localize.puzzle.solved
    );

    draw_set_halign(fa_left);
}
