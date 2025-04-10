/// @desc Script para crear un puzzle dinamico
/// @param {Array<Array>} slots numero de columnas de puzzle.
function scrInicializarPuzzle(slots) {
	for (var i = 0; i < array_length(slots); i++) {
		for (var j = 0; j < array_length(slots[i]); j++){
			if (slots[i][j] = 0) {
				draw_sprite_ext(
					PuzzleHolderSprite,
				    0,
				    puzzleWidth/2,
				    puzzleHeight/2,
				    5,
				    5,
				    0,
				    c_white,
				    1
				)
			}	
				
			else {
				draw_sprite_ext(    
				    PuzzleElementSprite,
				    0,
				    300,
				    350,
				    5,
				    5,
				    0,
				    c_white,
				    1
				)
			}	
		}
	}
}