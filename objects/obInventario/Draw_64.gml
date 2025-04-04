var inv_scale = 2;
var slot_size = 36 * inv_scale;

draw_sprite_stretched(
    Fondo_Inventario,
    0,
    x-6,
    y-6,
    12 + (row_length*slot_size),
    12 + (((INVENTORY_SLOTS-1) div row_length)+1)*slot_size
);

for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
    var xx = x + (i mod row_length) * slot_size + 2*inv_scale;
    var yy = y + (i div row_length) * slot_size + 2*inv_scale;
    
    draw_sprite_ext(Slot_Inventario, 0, xx, yy, inv_scale, inv_scale, 0, c_white, 1);
    
    if (inventory[i] != -1) {
        var sprite_scale = 2 * inv_scale;
        
        var slot_center_x = xx + (32*inv_scale)/2;
        var slot_center_y = yy + (40*inv_scale)/2;
        
        draw_sprite_ext(
            SlimeRed_Quieto, // Aqui se tendria q referenciar al item especifico
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