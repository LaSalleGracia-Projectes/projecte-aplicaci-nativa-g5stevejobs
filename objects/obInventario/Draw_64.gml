var inv_scale = 2;
var slot_size = 36 * inv_scale;

var gui_width = display_get_width();
var gui_height = display_get_height();

draw_sprite_stretched(
    Fondo_Inventario,
    0,
    x - 6,
    y - 6,
    12 + (row_length * slot_size),
    12 + (((INVENTORY_SLOTS - 1) div row_length) + 1) * slot_size
);

for (var i = 0; i < INVENTORY_SLOTS; i += 1) {
    var xx = x + (i mod row_length) * slot_size + 2 * inv_scale;
    var yy = y + (i div row_length) * slot_size + 2 * inv_scale;
    
    draw_sprite_ext(Slot_Inventario, 0, xx, yy, inv_scale, inv_scale, 0, c_white, 1);
    draw_set_font(InventorySlotFont);
    draw_set_color(c_white);
    
    var text_x = xx + 5;
	var text_y = yy;
    draw_text(text_x, text_y, string(i + 1));
	
    if (inventory[i] != -1) {
        var sprite_scale = 2 * inv_scale;
        
        var slot_center_x = xx + (32 * inv_scale) / 2;
        var slot_center_y = yy + (40 * inv_scale) / 2;
        
        draw_sprite_ext(
            SlimeRed_Quieto,  // Aquí se tiene que referenciar el item específico
            inventory[i], 
            slot_center_x, 
            slot_center_y, 
            sprite_scale, 
            sprite_scale, 
            0, 
            c_white, 
            1
        );
    }
}
