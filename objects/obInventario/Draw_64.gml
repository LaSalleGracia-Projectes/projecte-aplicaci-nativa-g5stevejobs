// Código del inventario con opacidad
var inv_scale = 2;
var slot_size = 36 * inv_scale;
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var inv_width = 12 + (row_length * slot_size);
var inv_height = 12 + (((INVENTORY_SLOTS - 1) div row_length) + 1) * slot_size;
var center_x = (gui_width - inv_width) / 2;
var center_y = (gui_height - inv_height) - 20;

// Guardar el alfa actual
var current_alpha = draw_get_alpha();

// Configurar opacidad para el fondo del inventario
var inv_bg_alpha = 0.7; // Ajusta este valor según necesites
draw_set_alpha(inv_bg_alpha);

// Dibujar inventario con transparencia
draw_sprite_stretched(
    Fondo_Inventario,
    0,
    center_x,
    center_y,
    inv_width,
    inv_height
);

var slot_alpha = 0.85;
draw_set_alpha(slot_alpha);

for (var i = 0; i < INVENTORY_SLOTS; i += 1) {
    var xx = center_x + 6 + (i mod row_length) * slot_size + 2 * inv_scale;
    var yy = center_y + 6 + (i div row_length) * slot_size + 2 * inv_scale;
    
    draw_sprite_ext(Slot_Inventario, 0, xx, yy, inv_scale, inv_scale, 0, c_white, slot_alpha);

    draw_set_alpha(1);
    draw_set_font(InventorySlotFont);
    draw_set_color(c_white);
    
    var text_x = xx + 5;
    var text_y = yy;
    draw_text(text_x, text_y, string(i + 1));
    
    if (inventory[i] != -1) {
        var sprite_scale = 2 * inv_scale;
        
        var slot_center_x = xx + (32 * inv_scale) / 2;
        var slot_center_y = yy + (40 * inv_scale) / 2;

        var item_alpha = 0.9;
        draw_sprite_ext(
            Espada,
            inventory[i], 
            slot_center_x, 
            slot_center_y, 
            sprite_scale, 
            sprite_scale, 
            0, 
            c_white, 
            item_alpha
        );
    }
}

draw_set_alpha(current_alpha);