function scrInicializarPuzzle(slots) {
	draw_sprite_ext(
		PuzzleGuide,
		0,
		puzzleWidth - 320,
		puzzleHeight - 140,
		5,
		5,
		0,
		c_white,
		0.4
	);
	
    for (var i = 0; i < array_length(slots); i++) {
        for (var j = 0; j < array_length(slots[i]); j++){
            if (slots[i][j] == 0) {
                draw_sprite_ext(
                    PuzzleHolderSprite,
                    0,
                    puzzleWidth * 1.25  - 100*(i+1),
                    (puzzleHeight + 80) - 75*(j+1),
                    5,
                    5,
                    0,
                    c_white,
                    1
                );
            }    
            else {
                var elementValue = slots[i][j];
                var elementColor = ds_map_find_value(elementColors, elementValue);
                if (elementColor == undefined) elementColor = c_white;
                
                draw_sprite_ext(    
                    PuzzleElementSprite,
                    0,
                    puzzleWidth * 1.25  - 100*(i+1),
                    (puzzleHeight + 80) - 75*(j+1),
                    5,
                    5,
                    0,
                    elementColor,
                    1
                );

                if (hasWon && i == winColumnIndex) {
                    var sparkleAlpha = 0.5 + 0.5 * sin(winAnimTimer * 0.1 + j * 0.5);
                }
            }    
        }
    }
}

function get_slot_position(column, row) {
    var xx = puzzleWidth * 1.25 - 100 * (column + 1);
    var yy = (puzzleHeight + 80) - 75 * (row + 1);
    return { x: xx, y: yy };
}

function get_column_at_position(mouseX, mouseY) {
    var padding = 30;
    
    for (var i = 0; i < array_length(slots); i++) {
        var columnX = puzzleWidth * 1.25 - 100 * (i + 1);
        var columnWidth = 60;
        
        if (mouseX >= columnX - padding && mouseX <= columnX + columnWidth + padding) {
            return i;
        }
    }
    
    return -1;
}

function find_top_element(column) {
    if (column < 0 || column >= array_length(slots)) return -1;
    
    for (var j = array_length(slots[column]) - 1; j >= 0; j--) {
        if (slots[column][j] != 0) {
			audio_play_sound(ConfirmSound,0,false)
            return j;
        }
    }
    
    return -1;
}

function find_first_empty_slot(column) {
    if (column < 0 || column >= array_length(slots)) return -1;
    
    for (var j = 0; j < array_length(slots[column]); j++) {
        if (slots[column][j] == 0) {
			audio_play_sound(CancelSound,0,false)
            return j;
        }
    }
    
    return -1;
}

function check_win_condition(column) {
    if (column < 0 || column >= array_length(slots)) return false;
    
    if (array_length(slots[column]) < 5) return false;
    
    if (slots[column][0] == 5 &&
        slots[column][1] == 4 &&
        slots[column][2] == 3 &&
        slots[column][3] == 2 &&
        slots[column][4] == 1) {
        return true;
    }
    
    return false;
}