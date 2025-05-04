if (!hasWon) {
    for (var i = 0; i < array_length(slots); i++) {
        if (check_win_condition(i)) {
            hasWon = true;
            winColumnIndex = i;
            winAnimTimer = 0;
            break;
        }
    }
}


if (hasWon) {
    winAnimTimer++;
    if (winAnimTimer >= winAnimDuration) {
        room_goto(Room1)
    }
} 

else {
    if (mouse_check_button_pressed(mb_left)) {
        if (!isHoldingElement) {
            var column = get_column_at_position(mouse_x, mouse_y);
            
            if (column >= 0) {
                var elementIdx = find_top_element(column);
                
                if (elementIdx >= 0) {
                    selectedColumn = column;
                    selectedElement = elementIdx;
                    holdingValue = slots[column][elementIdx];
                    isHoldingElement = true;
                    
                    slots[column][elementIdx] = 0;
                    
                    var pos = get_slot_position(column, elementIdx);
                    mouseOffsetX = pos.x - mouse_x;
                    mouseOffsetY = pos.y - mouse_y;
                }
            }
        }
    }

    if (mouse_check_button_released(mb_left)) {
        if (isHoldingElement) {
            var targetColumn = get_column_at_position(mouse_x, mouse_y);
            
            if (targetColumn >= 0 && targetColumn != selectedColumn) {
                var emptySlot = find_first_empty_slot(targetColumn);
                
                if (emptySlot >= 0) {
                    slots[targetColumn][emptySlot] = holdingValue;
                } else {
                    slots[selectedColumn][selectedElement] = holdingValue;
                }
            } else {
				slots[selectedColumn][selectedElement] = holdingValue;
            }
            
            isHoldingElement = false;
            selectedColumn = -1;
            selectedElement = -1;
            holdingValue = 0;
        }
    }
}